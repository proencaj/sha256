#ifndef SHA256_H
#define SHA256_H

#include <stdint.h>
#include <stddef.h>

typedef struct { 
    uint8_t data[64];
    uint32_t datalen;
    uint64_t bitlen;
    uint32_t state[8];
} SHA256_CONTEXT;

void sha256_init(SHA256_CONTEXT *ctx);
void sha256_update(SHA256_CONTEXT *ctx, const uint8_t data[], size_t len);
void sha256_final(SHA256_CONTEXT *ctx, uint8_t hash[]);
void sha256(const uint8_t *data, size_t len, uint8_t hash[32]);

#endif