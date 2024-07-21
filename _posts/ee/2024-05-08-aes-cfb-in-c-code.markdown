---
layout: post
title: IMPLEMENT AES CFB IN C CODE
category: sees
---



### Implementing AES-CFB in C requires two parts:

1. **AES implementation**: This handles the core AES encryption/decryption logic. There are libraries like OpenSSL you can use, or for a lightweight option, consider libraries like [tiny-AES-c](https://github.com/kokke/tiny-AES-c).

2. **CFB mode implementation**: This uses the AES functionality to perform encryption/decryption in Cipher Feedback mode. Here's a basic structure:



```c

#include <stdint.h>

// Assuming you have functions for AES encryption/decryption (e.g., AES_encrypt, AES_decrypt)

void aes_cfb_encrypt(const uint8_t* key, size_t key_len, const uint8_t* iv,
                     const uint8_t* input, size_t input_len, uint8_t* output) {
  uint8_t shift_register[AES_BLOCK_SIZE]; // AES block size (usually 16 bytes)
  memcpy(shift_register, iv, AES_BLOCK_SIZE);

  for (size_t i = 0; i < input_len; ++i) {
    AES_encrypt(key, key_len, shift_register, shift_register);
    output[i] = shift_register[0] ^ input[i];
    // Shift the register for next round
    memmove(shift_register, shift_register + 1, AES_BLOCK_SIZE - 1);
    shift_register[AES_BLOCK_SIZE - 1] = output[i];
  }
}

void aes_cfb_decrypt(const uint8_t* key, size_t key_len, const uint8_t* iv,
                     const uint8_t* input, size_t input_len, uint8_t* output) {
  uint8_t shift_register[AES_BLOCK_SIZE];
  memcpy(shift_register, iv, AES_BLOCK_SIZE);

  for (size_t i = 0; i < input_len; ++i) {
    AES_encrypt(key, key_len, shift_register, shift_register);
    output[i] = shift_register[0] ^ input[i];
    // Shift the register for next round
    memmove(shift_register, shift_register + 1, AES_BLOCK_SIZE - 1);
    shift_register[AES_BLOCK_SIZE - 1] = input[i];
  }
}

```

### Note:

This is a basic example and doesn't handle padding (important for CBC mode). You'll need to implement padding for real-world use cases.
Remember to replace AES_encrypt and AES_decrypt with your actual implementation functions.
This code assumes the same key and IV are used for encryption and decryption.

### Further considerations:

Error handling is not included in this example. Make sure to handle potential errors during encryption/decryption.
This is a basic implementation for educational purposes. For production use, consider using well-established cryptographic libraries like OpenSSL.

## CF

[wiki: Block cipher mode of operation](https://en.wikipedia.org/wiki/Block_cipher_mode_of_operation)
