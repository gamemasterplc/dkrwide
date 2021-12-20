/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x800D2C70 */

#include "libultra_internal.h"

void __osDequeueThread(OSThread **queue, OSThread *t) {
   register OSThread *pred;
   register OSThread *succ;
   pred = (OSThread *)queue; //this is actually legit..
   succ = pred->next;
   while (succ != NULL) {
      if (succ == t) {
         pred->next = t->next;
         return;
      }
      pred = succ;
      succ = pred->next;
   }
}
