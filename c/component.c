#include "puppy.h"

void exports_puppy_kitten(puppy_maybe_name_t *ret)
{
  *ret = (puppy_maybe_name_t){.tag = PUPPY_MAYBE_NAME_NONE};
}
