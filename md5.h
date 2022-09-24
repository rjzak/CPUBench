#ifndef __md5_h__
#define __md5_h__

#include <stdint.h>
#include <stddef.h>

void md5_calc(const uint8_t *initial_msg, const size_t initial_len);
char* md5_result();

#endif
