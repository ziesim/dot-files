Vim�UnDo� A�����P�)u�1��q8�D�7�/ �$ d�ȺI;   /   0    shmid = shmget(key, 1024, 0666 | IPC_CREAT);            L       L   L   L    c��    _�                            ����                                                                                                                                                                                                                                                                                                                                                             cڶ     �                    struct sembuf t;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             cڷ�     �         8          char * buffer;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             cڸ&     �                    //buffer = malloc(oldSize);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             cڸ&     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             cڸ,     �          6      #include <sys/shm.h>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             cڸ-    �          7       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             cڸA     �                 5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             cڸL     �                 5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             cڸN     �                &//        while (shs.shm_nattch > 0) {5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             cڸO     �                ,//            shmctl(shmId, IPC_STAT ,&shs);5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             cڸO     �                //        }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             cڸU     �      !   2              if (oldSize != size) {5�_�                    (   
    ����                                                                                                                                                                                                                                                                                                                                                             cڸ_     �   '   )   3      D        //printf("size=%d Data in shared memory: %s\n", size,  ptr);5�_�                    (       ����                                                                                                                                                                                                                                                                                                                                                             cڸh     �   '   )   3      B        printf("size=%d Data in shared memory: %s\n", size,  ptr);5�_�                   (       ����                                                                                                                                                                                                                                                                                                                                                             cڸr     �   '   )   3      B        printf("size=%l Data in shared memory: %s\n", size,  ptr);5�_�                    (       ����                                                                                                                                                                                                                                                                                                                                                             cڸw     �   '   )   3      C        printf("size=%la Data in shared memory: %s\n", size,  ptr);5�_�                    .        ����                                                                                                                                                                                                                                                                                                                                                             cڸ     �   -   .           5�_�                    .        ����                                                                                                                                                                                                                                                                                                                                                             cڸ     �   -   .           5�_�                    .        ����                                                                                                                                                                                                                                                                                                                                                             cڸ     �   -   .           5�_�                    .        ����                                                                                                                                                                                                                                                                                                                                                             cڸ�     �   -   .           5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             cڸ�     �   ,   /   /          }5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             cڸ�    �      	           5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                             cڼ     �   &   (   /      C        printf("size=%lo Data in shared memory: %s\n", size,  ptr);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             cڼM     �         /      #include <semaphore.h>5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             cڼ�     �   	      1      sem_t *sema1, *sema2;5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             cڼ�     �   	   
          sem_t *sema1, *sema2;5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             cڼ�     �   	   
           5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             cڽ
     �         /       5�_�                     
        ����                                                                                                                                                                                                                                                                                                                                                             cڽ     �   	      1       5�_�      !               
       ����                                                                                                                                                                                                                                                                                                                                                             cڽ     �   	      1      sem_t* sema1, *sema2;5�_�       "           !   
       ����                                                                                                                                                                                                                                                                                                                                                             cڽ     �   	      1      sem_t*sema1, *sema2;5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             cڽ     �                    sem_t* sema1, *sema2;5�_�   "   $           #   
       ����                                                                                                                                                                                                                                                                                                                                                             c�͆     �   	      0      sem_t *sema1, *sema2;5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                             c�͎     �                    char *buffer;5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             c���     �         0      !    sema1 = sem_open("sema22",0);5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             c���     �         0      !    sema2 = sem_open("sema23",0);5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             c���     �         0           sema1 = sem_open("sema1",0);5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             c���     �         0           sema2 = sem_open("sema2",0);5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                                                             c��j     �   
             char *buffer;5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                                             c��l     �         /    �         /    5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                                             c��n     �         0      char *buffer;5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                             c��r     �                    5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                             c��s     �                 5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                                             c��     �         .    5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                                                             c��*     �         /      4    int shmId = shmget(key, 1024, 0666 | IPC_CREAT);5�_�   /   1           0   
       ����                                                                                                                                                                                                                                                                                                                                                             c��2     �   	      /      sem_t *sema1, *sema2;5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                                             c��>     �         0      4    int shmid = shmget(key, 1024, 0666 | IPC_CREAT);5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                             c��D     �         0      &        shmctl(shmId, IPC_STAT ,&shs);5�_�   2   4           3   %       ����                                                                                                                                                                                                                                                                                                                                                             c��L     �   $   &   0      *        char *ptr = shmat(shmId, NULL, 0);5�_�   3   5           4   
       ����                                                                                                                                                                                                                                                                                                                                                             c�Ϟ     �   	      0      sem_t *sema1, *sema2;5�_�   4   6           5   
       ����                                                                                                                                                                                                                                                                                                                                                             c�Ϡ     �   	      0      sem_t *sem1, *sema2;5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                             c�ϩ     �         0      !    sema1 = sem_open("sema1", 0);5�_�   6   8           7      	    ����                                                                                                                                                                                                                                                                                                                                                             c�Ϭ     �         0      !    sema2 = sem_open("sema2", 0);5�_�   7   9           8      	    ����                                                                                                                                                                                                                                                                                                                                                             c�ϯ     �         0      !    sema1 = sem_open("sema2", 0);5�_�   8   :           9          ����                                                                                                                                                                                                                                                                                                                                                             c�ϱ     �         0           sem1 = sem_open("sema1", 0);5�_�   9   <           :          ����                                                                                                                                                                                                                                                                                                                                                             c�ϳ     �         0           sem2 = sem_open("sema2", 0);5�_�   :   =   ;       <          ����                                                                                                                                                                                                                                                                                                                                                             c���     �         0              sem_wait(sema2);5�_�   <   >           =   ,       ����                                                                                                                                                                                                                                                                                                                                                             c��     �   +   -   0              sem_post(sema1);5�_�   =   ?           >          ����                                                                                                                                                                                                                                                                                                                                                             c�Ш     �         0      !int main(int argc, char** argv) {5�_�   >   @           ?          ����                                                                                                                                                                                                                                                                                                                                                             c�Щ     �         0      "int main(int argc, char ** argv) {5�_�   ?   A           @   (       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   '   (          F        // printf("size=%lo Data in shared memory: %s\n", size,  ptr);5�_�   @   B           A   (        ����                                                                                                                                                                                                                                                                                                                                                             c���     �   '   (           5�_�   A   C           B           ����                                                                                                                                                                                                                                                                                                                                                             c��	    �                #include <strings.h>5�_�   B   D           C          ����                                                                                                                                                                                                                                                                                                                                                             c���     �         -          int oldSize = 1;5�_�   C   E           D          ����                                                                                                                                                                                                                                                                                                                                                             c���     �         -          int = 1;5�_�   D   F           E          ����                                                                                                                                                                                                                                                                                                                                                             c���     �          -              if (oldSize != size) {5�_�   E   G           F   !       ����                                                                                                                                                                                                                                                                                                                                                             c���     �       "   -                  oldSize = size;5�_�   F   H           G          ����                                                                                                                                                                                                                                                                                                                               "          #       v   #    c�Գ     �      
   -      #include <semaphore.h>5�_�   G   I           H          ����                                                                                                                                                                                                                                                                                                                               "          #       v   #    c���     �         /      0    shmid = shmget(key, 1024, 0666 | IPC_CREAT);5�_�   H   J           I      .    ����                                                                                                                                                                                                                                                                                                                               "          #       v   #    c���     �         /      0    shmid = shmget(key, SIZE, 0666 | IPC_CREAT);5�_�   I   K           J      %    ����                                                                                                                                                                                                                                                                                                                               "          #       v   #    c���     �         /      7    shmid = shmget(key, SIZE, 0666 | IPC_CREAT | 0666);5�_�   J   L           K          ����                                                                                                                                                                                                                                                                                                                               "          #       v   #    c��     �         /      0    shmid = shmget(key, SIZE, IPC_CREAT | 0666);5�_�   K               L      .    ����                                                                                                                                                                                                                                                                                                                               "          #       v   #    c��    �         /      7    shmid = shmget(key, SIZE, 0666 | IPC_CREAT | 0666);5�_�   :           <   ;   0       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   /   1           �   .   1              return 5�_�                   (       ����                                                                                                                                                                                                                                                                                                                                                             cڸn     �   (   )   3       5�_�                     )        ����                                                                                                                                                                                                                                                                                                                                                             cڸo     �   (   *   4      u5��