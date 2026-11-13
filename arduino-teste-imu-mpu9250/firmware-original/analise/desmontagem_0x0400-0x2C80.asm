  0400:  86 fd        sbrc r24, 6                    
  0402:  0d c0        rjmp L_041e                    ; -> 0x041e
  0404:  0f b6        in r0, 0x3f                    ; SREG
  0406:  07 fc        sbrc r0, 7                     
  0408:  f7 cf        rjmp L_03f8                    ; -> 0x03f8
  040a:  8c 91        ld r24, X                      
  040c:  85 ff        sbrs r24, 5                    
  040e:  f2 cf        rjmp L_03f4                    ; -> 0x03f4
  0410:  80 81        ld r24, Z                      
  0412:  85 ff        sbrs r24, 5                    
  0414:  ed cf        rjmp L_03f0                    ; -> 0x03f0
  0416:  ce 01        movw r25:r24, r29:r28          
  0418:  0e 94 83 01  call F_0306                    ; -> 0x0306
  041c:  e9 cf        rjmp L_03f0                    ; -> 0x03f0
L_041e:
  041e:  df 91        pop r29                        
  0420:  cf 91        pop r28                        
  0422:  08 95        ret                            

; ===== fnA_0424 =====
fnA_0424:
  0424:  90 e0        ldi r25, 0x00                  
  0426:  fc 01        movw r31:r30, r25:r24          
  0428:  e8 59        subi r30, 0x98                 
  042a:  ff 4f        sbci r31, 0xff                 
  042c:  24 91        lpm r18, Z                     
  042e:  fc 01        movw r31:r30, r25:r24          
  0430:  ec 55        subi r30, 0x5c                 
  0432:  ff 4f        sbci r31, 0xff                 
  0434:  34 91        lpm r19, Z                     
  0436:  fc 01        movw r31:r30, r25:r24          
  0438:  e0 57        subi r30, 0x70                 
  043a:  ff 4f        sbci r31, 0xff                 
  043c:  e4 91        lpm r30, Z                     
  043e:  ee 23        tst r30                        
  0440:  c9 f0        breq L_0474                    ; -> 0x0474
  0442:  22 23        tst r18                        
  0444:  39 f0        breq L_0454                    ; -> 0x0454
  0446:  23 30        cpi r18, 0x03                  
  0448:  01 f1        breq L_048a                    ; -> 0x048a
  044a:  a8 f4        brcc L_0476                    ; -> 0x0476
  044c:  21 30        cpi r18, 0x01                  
  044e:  19 f1        breq L_0496                    ; -> 0x0496
  0450:  22 30        cpi r18, 0x02                  
  0452:  29 f1        breq L_049e                    ; -> 0x049e
L_0454:
  0454:  f0 e0        ldi r31, 0x00                  
  0456:  ee 0f        lsl r30                        
  0458:  ff 1f        rol r31                        
  045a:  e4 58        subi r30, 0x84                 
  045c:  ff 4f        sbci r31, 0xff                 
  045e:  a5 91        lpm r26, Z+                    
  0460:  b4 91        lpm r27, Z                     
  0462:  8f b7        in r24, 0x3f                   ; SREG
  0464:  f8 94        cli                            
  0466:  ec 91        ld r30, X                      
  0468:  61 11        cpse r22, r1                   
  046a:  26 c0        rjmp L_04b8                    ; -> 0x04b8
  046c:  30 95        com r19                        
  046e:  3e 23        and r19, r30                   
L_0470:
  0470:  3c 93        st X, r19                      
  0472:  8f bf        out 0x3f, r24                  ; SREG
L_0474:
  0474:  08 95        ret                            
L_0476:
  0476:  27 30        cpi r18, 0x07                  
  0478:  a9 f0        breq L_04a4                    ; -> 0x04a4
  047a:  28 30        cpi r18, 0x08                  
  047c:  c9 f0        breq L_04b0                    ; -> 0x04b0
  047e:  24 30        cpi r18, 0x04                  
  0480:  49 f7        brne L_0454                    ; -> 0x0454
  0482:  80 91 80 00  lds r24, 0x0080                ; TCCR1A
  0486:  8f 7d        andi r24, 0xdf                 
  0488:  03 c0        rjmp L_0490                    ; -> 0x0490
L_048a:
  048a:  80 91 80 00  lds r24, 0x0080                ; TCCR1A
  048e:  8f 77        andi r24, 0x7f                 
L_0490:
  0490:  80 93 80 00  sts 0x0080, r24                ; TCCR1A
  0494:  df cf        rjmp L_0454                    ; -> 0x0454
L_0496:
  0496:  84 b5        in r24, 0x24                   ; TCCR0A
  0498:  8f 77        andi r24, 0x7f                 
L_049a:
  049a:  84 bd        out 0x24, r24                  ; TCCR0A
  049c:  db cf        rjmp L_0454                    ; -> 0x0454
L_049e:
  049e:  84 b5        in r24, 0x24                   ; TCCR0A
  04a0:  8f 7d        andi r24, 0xdf                 
  04a2:  fb cf        rjmp L_049a                    ; -> 0x049a
L_04a4:
  04a4:  80 91 b0 00  lds r24, 0x00b0                ; TCCR2A
  04a8:  8f 77        andi r24, 0x7f                 
L_04aa:
  04aa:  80 93 b0 00  sts 0x00b0, r24                ; TCCR2A
  04ae:  d2 cf        rjmp L_0454                    ; -> 0x0454
L_04b0:
  04b0:  80 91 b0 00  lds r24, 0x00b0                ; TCCR2A
  04b4:  8f 7d        andi r24, 0xdf                 
  04b6:  f9 cf        rjmp L_04aa                    ; -> 0x04aa
L_04b8:
  04b8:  3e 2b        or r19, r30                    
  04ba:  da cf        rjmp L_0470                    ; -> 0x0470

; ===== fnB_04bc =====
fnB_04bc:
  04bc:  3f b7        in r19, 0x3f                   ; SREG
  04be:  f8 94        cli                            
  04c0:  80 91 cc 01  lds r24, 0x01cc                ; v_01cc
  04c4:  90 91 cd 01  lds r25, 0x01cd                ; v_01cd
  04c8:  a0 91 ce 01  lds r26, 0x01ce                ; v_01ce
  04cc:  b0 91 cf 01  lds r27, 0x01cf                ; v_01cf
  04d0:  26 b5        in r18, 0x26                   ; TCNT0
  04d2:  a8 9b        sbis 0x15, 0                   ; TIFR0
  04d4:  05 c0        rjmp L_04e0                    ; -> 0x04e0
  04d6:  2f 3f        cpi r18, 0xff                  
  04d8:  19 f0        breq L_04e0                    ; -> 0x04e0
  04da:  01 96        adiw r25:r24, 1                
  04dc:  a1 1d        adc r26, r1                    
  04de:  b1 1d        adc r27, r1                    
L_04e0:
  04e0:  3f bf        out 0x3f, r19                  ; SREG
  04e2:  ba 2f        mov r27, r26                   
  04e4:  a9 2f        mov r26, r25                   
  04e6:  98 2f        mov r25, r24                   
  04e8:  88 27        clr r24                        
  04ea:  bc 01        movw r23:r22, r25:r24          
  04ec:  cd 01        movw r25:r24, r27:r26          
  04ee:  62 0f        add r22, r18                   
  04f0:  71 1d        adc r23, r1                    
  04f2:  81 1d        adc r24, r1                    
  04f4:  91 1d        adc r25, r1                    
  04f6:  42 e0        ldi r20, 0x02                  
L_04f8:
  04f8:  66 0f        lsl r22                        
  04fa:  77 1f        rol r23                        
  04fc:  88 1f        rol r24                        
  04fe:  99 1f        rol r25                        
  0500:  4a 95        dec r20                        
  0502:  d1 f7        brne L_04f8                    ; -> 0x04f8
  0504:  08 95        ret                            

; ===== delay =====
delay:
  0506:  8f 92        push r8                        
  0508:  9f 92        push r9                        
  050a:  af 92        push r10                       
  050c:  bf 92        push r11                       
  050e:  cf 92        push r12                       
  0510:  df 92        push r13                       
  0512:  ef 92        push r14                       
  0514:  ff 92        push r15                       
  0516:  4b 01        movw r9:r8, r23:r22            
  0518:  5c 01        movw r11:r10, r25:r24          
  051a:  0e 94 5e 02  call fnB_04bc                  ; -> 0x04bc
  051e:  6b 01        movw r13:r12, r23:r22          
  0520:  7c 01        movw r15:r14, r25:r24          
L_0522:
  0522:  0e 94 5e 02  call fnB_04bc                  ; -> 0x04bc
  0526:  6c 19        sub r22, r12                   
  0528:  7d 09        sbc r23, r13                   
  052a:  8e 09        sbc r24, r14                   
  052c:  9f 09        sbc r25, r15                   
  052e:  68 3e        cpi r22, 0xe8                  
  0530:  73 40        sbci r23, 0x03                 
  0532:  81 05        cpc r24, r1                    
  0534:  91 05        cpc r25, r1                    
  0536:  a8 f3        brcs L_0522                    ; -> 0x0522
  0538:  21 e0        ldi r18, 0x01                  
  053a:  82 1a        sub r8, r18                    
  053c:  91 08        sbc r9, r1                     
  053e:  a1 08        sbc r10, r1                    
  0540:  b1 08        sbc r11, r1                    
  0542:  88 ee        ldi r24, 0xe8                  
  0544:  c8 0e        add r12, r24                   
  0546:  83 e0        ldi r24, 0x03                  
  0548:  d8 1e        adc r13, r24                   
  054a:  e1 1c        adc r14, r1                    
  054c:  f1 1c        adc r15, r1                    
  054e:  81 14        cp r8, r1                      
  0550:  91 04        cpc r9, r1                     
  0552:  a1 04        cpc r10, r1                    
  0554:  b1 04        cpc r11, r1                    
  0556:  29 f7        brne L_0522                    ; -> 0x0522
  0558:  ff 90        pop r15                        
  055a:  ef 90        pop r14                        
  055c:  df 90        pop r13                        
  055e:  cf 90        pop r12                        
  0560:  bf 90        pop r11                        
  0562:  af 90        pop r10                        
  0564:  9f 90        pop r9                         
  0566:  8f 90        pop r8                         
  0568:  08 95        ret                            

; ===== fnC_056a =====
fnC_056a:
  056a:  85 ed        ldi r24, 0xd5                  
  056c:  80 93 bc 00  sts 0x00bc, r24                ; TWCR
L_0570:
  0570:  80 91 bc 00  lds r24, 0x00bc                ; TWCR
  0574:  84 fd        sbrc r24, 4                    
  0576:  fc cf        rjmp L_0570                    ; -> 0x0570
  0578:  10 92 1f 02  sts 0x021f, r1                 ; v_021f
  057c:  08 95        ret                            

; ===== fnD_057e =====
fnD_057e:
  057e:  20 91 a4 01  lds r18, 0x01a4                ; v_01a4
  0582:  26 0f        add r18, r22                   
  0584:  33 27        clr r19                        
  0586:  33 1f        rol r19                        
  0588:  21 32        cpi r18, 0x21                  
  058a:  31 05        cpc r19, r1                    
  058c:  ec f4        brge L_05c8                    ; -> 0x05c8
  058e:  20 91 1f 02  lds r18, 0x021f                ; v_021f
  0592:  fc 01        movw r31:r30, r25:r24          
  0594:  90 e0        ldi r25, 0x00                  
  0596:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  0598:  24 30        cpi r18, 0x04                  
  059a:  69 f0        breq L_05b6                    ; -> 0x05b6
  059c:  82 e0        ldi r24, 0x02                  ; r25:r24 = 0x0002 (2)
  059e:  08 95        ret                            
L_05a0:
  05a0:  a0 91 a4 01  lds r26, 0x01a4                ; v_01a4
  05a4:  21 91        ld r18, Z+                     
  05a6:  ac 01        movw r21:r20, r25:r24          
  05a8:  4c 57        subi r20, 0x7c                 
  05aa:  5e 4f        sbci r21, 0xfe                 
  05ac:  a4 0f        add r26, r20                   
  05ae:  b5 2f        mov r27, r21                   
  05b0:  b1 1d        adc r27, r1                    
  05b2:  2c 93        st X, r18                      
  05b4:  01 96        adiw r25:r24, 1                
L_05b6:
  05b6:  86 17        cp r24, r22                    
  05b8:  98 f3        brcs L_05a0                    ; -> 0x05a0
  05ba:  80 91 a4 01  lds r24, 0x01a4                ; v_01a4
  05be:  68 0f        add r22, r24                   
  05c0:  60 93 a4 01  sts 0x01a4, r22                ; v_01a4
  05c4:  80 e0        ldi r24, 0x00                  
  05c6:  08 95        ret                            
L_05c8:
  05c8:  81 e0        ldi r24, 0x01                  
  05ca:  08 95        ret                            
  05cc:  08 95        ret                            
  05ce:  e0 91 d8 01  lds r30, 0x01d8                ; v_01d8
  05d2:  80 91 d7 01  lds r24, 0x01d7                ; v_01d7
  05d6:  e8 17        cp r30, r24                    
  05d8:  30 f4        brcc L_05e6                    ; -> 0x05e6
  05da:  f0 e0        ldi r31, 0x00                  
  05dc:  e7 52        subi r30, 0x27                 
  05de:  fe 4f        sbci r31, 0xfe                 
  05e0:  80 81        ld r24, Z                      
  05e2:  90 e0        ldi r25, 0x00                  
  05e4:  08 95        ret                            
L_05e6:
  05e6:  8f ef        ldi r24, 0xff                  ; r25:r24 = 0x00ff (255)
  05e8:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  05ea:  08 95        ret                            
  05ec:  90 91 d8 01  lds r25, 0x01d8                ; v_01d8
  05f0:  80 91 d7 01  lds r24, 0x01d7                ; v_01d7
  05f4:  2f ef        ldi r18, 0xff                  
  05f6:  3f ef        ldi r19, 0xff                  ; r19:r18 = 0xffff (65535)
  05f8:  98 17        cp r25, r24                    
  05fa:  48 f4        brcc L_060e                    ; -> 0x060e
  05fc:  e9 2f        mov r30, r25                   
  05fe:  f0 e0        ldi r31, 0x00                  
  0600:  e7 52        subi r30, 0x27                 
  0602:  fe 4f        sbci r31, 0xfe                 
  0604:  20 81        ld r18, Z                      
  0606:  30 e0        ldi r19, 0x00                  
  0608:  9f 5f        subi r25, 0xff                 
  060a:  90 93 d8 01  sts 0x01d8, r25                ; v_01d8
L_060e:
  060e:  c9 01        movw r25:r24, r19:r18          
  0610:  08 95        ret                            
  0612:  80 91 d7 01  lds r24, 0x01d7                ; v_01d7
  0616:  90 91 d8 01  lds r25, 0x01d8                ; v_01d8
  061a:  89 1b        sub r24, r25                   
  061c:  99 0b        sbc r25, r25                   
  061e:  08 95        ret                            
  0620:  cf 92        push r12                       
  0622:  df 92        push r13                       
  0624:  ef 92        push r14                       
  0626:  ff 92        push r15                       
  0628:  0f 93        push r16                       
  062a:  1f 93        push r17                       
  062c:  cf 93        push r28                       
  062e:  df 93        push r29                       
  0630:  7c 01        movw r15:r14, r25:r24          
  0632:  cb 01        movw r25:r24, r23:r22          
  0634:  8a 01        movw r17:r16, r21:r20          
  0636:  20 91 20 02  lds r18, 0x0220                ; v_0220
  063a:  22 23        tst r18                        
  063c:  89 f0        breq L_0660                    ; -> 0x0660
  063e:  eb 01        movw r29:r28, r23:r22          
  0640:  6b 01        movw r13:r12, r23:r22          
  0642:  c4 0e        add r12, r20                   
  0644:  d5 1e        adc r13, r21                   
L_0646:
  0646:  cc 15        cp r28, r12                    
  0648:  dd 05        cpc r29, r13                   
  064a:  69 f0        breq L_0666                    ; -> 0x0666
  064c:  69 91        ld r22, Y+                     
  064e:  d7 01        movw r27:r26, r15:r14          
  0650:  ed 91        ld r30, X+                     
  0652:  fc 91        ld r31, X                      
  0654:  01 90        ld r0, Z+                      
  0656:  f0 81        ld r31, Z                      
  0658:  e0 2d        mov r30, r0                    
  065a:  c7 01        movw r25:r24, r15:r14          
  065c:  09 95        icall                          
  065e:  f3 cf        rjmp L_0646                    ; -> 0x0646
L_0660:
  0660:  64 2f        mov r22, r20                   
  0662:  0e 94 bf 02  call fnD_057e                  ; -> 0x057e
L_0666:
  0666:  c8 01        movw r25:r24, r17:r16          
  0668:  df 91        pop r29                        
  066a:  cf 91        pop r28                        
  066c:  1f 91        pop r17                        
  066e:  0f 91        pop r16                        
  0670:  ff 90        pop r15                        
  0672:  ef 90        pop r14                        
  0674:  df 90        pop r13                        
  0676:  cf 90        pop r12                        
  0678:  08 95        ret                            
  067a:  cf 93        push r28                       
  067c:  df 93        push r29                       
  067e:  1f 92        push r1                        
  0680:  cd b7        in r28, 0x3d                   ; SPL
  0682:  de b7        in r29, 0x3e                   ; SPH
  0684:  69 83        std Y+1, r22                   
  0686:  20 91 20 02  lds r18, 0x0220                ; v_0220
  068a:  22 23        tst r18                        
  068c:  f9 f0        breq L_06cc                    ; -> 0x06cc
  068e:  20 91 43 02  lds r18, 0x0243                ; v_0243
  0692:  20 32        cpi r18, 0x20                  
  0694:  58 f0        brcs L_06ac                    ; -> 0x06ac
  0696:  21 e0        ldi r18, 0x01                  
  0698:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0001 (1)
  069a:  fc 01        movw r31:r30, r25:r24          
  069c:  33 83        std Z+3, r19                   
  069e:  22 83        std Z+2, r18                   
  06a0:  90 e0        ldi r25, 0x00                  
  06a2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
L_06a4:
  06a4:  0f 90        pop r0                         
  06a6:  df 91        pop r29                        
  06a8:  cf 91        pop r28                        
  06aa:  08 95        ret                            
L_06ac:
  06ac:  80 91 21 02  lds r24, 0x0221                ; v_0221
  06b0:  e8 2f        mov r30, r24                   
  06b2:  f0 e0        ldi r31, 0x00                  
  06b4:  ee 5d        subi r30, 0xde                 
  06b6:  fd 4f        sbci r31, 0xfd                 
  06b8:  99 81        ldd r25, Y+1                   
  06ba:  90 83        st Z, r25                      
  06bc:  8f 5f        subi r24, 0xff                 
  06be:  80 93 21 02  sts 0x0221, r24                ; v_0221
  06c2:  80 93 43 02  sts 0x0243, r24                ; v_0243
L_06c6:
  06c6:  81 e0        ldi r24, 0x01                  
  06c8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  06ca:  ec cf        rjmp L_06a4                    ; -> 0x06a4
L_06cc:
  06cc:  61 e0        ldi r22, 0x01                  
  06ce:  ce 01        movw r25:r24, r29:r28          
  06d0:  01 96        adiw r25:r24, 1                
  06d2:  0e 94 bf 02  call fnD_057e                  ; -> 0x057e
  06d6:  f7 cf        rjmp L_06c6                    ; -> 0x06c6
  06d8:  90 e0        ldi r25, 0x00                  
  06da:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  06dc:  08 95        ret                            
  06de:  08 95        ret                            

; ===== F_06e0 =====
F_06e0:
  06e0:  8e bd        out 0x2e, r24                  ; SPDR
  06e2:  00 00        nop                            
L_06e4:
  06e4:  0d b4        in r0, 0x2d                    ; SPSR
  06e6:  07 fe        sbrs r0, 7                     
  06e8:  fd cf        rjmp L_06e4                    ; -> 0x06e4
  06ea:  8e b5        in r24, 0x2e                   ; SPDR
  06ec:  08 95        ret                            

; ===== F_06ee =====
F_06ee:
  06ee:  8c bd        out 0x2c, r24                  ; SPCR
  06f0:  9d bd        out 0x2d, r25                  ; SPSR
  06f2:  08 95        ret                            

; ===== F_06f4 =====
F_06f4:
  06f4:  fc 01        movw r31:r30, r25:r24          
L_06f6:
  06f6:  01 90        ld r0, Z+                      
  06f8:  00 20        tst r0                         
  06fa:  e9 f7        brne L_06f6                    ; -> 0x06f6
  06fc:  31 97        sbiw r31:r30, 1                
  06fe:  af 01        movw r21:r20, r31:r30          
  0700:  48 1b        sub r20, r24                   
  0702:  59 0b        sbc r21, r25                   
  0704:  bc 01        movw r23:r22, r25:r24          
  0706:  84 e4        ldi r24, 0x44                  
  0708:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0244 (580)
  070a:  0c 94 05 01  jmp L_020a                     ; -> 0x020a

; ===== F_070e =====
F_070e:
  070e:  8f 92        push r8                        
  0710:  9f 92        push r9                        
  0712:  af 92        push r10                       
  0714:  bf 92        push r11                       
  0716:  0f 93        push r16                       
  0718:  1f 93        push r17                       
  071a:  cf 93        push r28                       
  071c:  df 93        push r29                       
  071e:  cd b7        in r28, 0x3d                   ; SPL
  0720:  de b7        in r29, 0x3e                   ; SPH
  0722:  a1 97        sbiw r29:r28, 33               
  0724:  0f b6        in r0, 0x3f                    ; SREG
  0726:  f8 94        cli                            
  0728:  de bf        out 0x3e, r29                  ; SPH
  072a:  0f be        out 0x3f, r0                   ; SREG
  072c:  cd bf        out 0x3d, r28                  ; SPL
  072e:  19 a2        std Y+33, r1                   
  0730:  42 30        cpi r20, 0x02                  
  0732:  08 f4        brcc L_0736                    ; -> 0x0736
  0734:  4a e0        ldi r20, 0x0a                  
L_0736:
  0736:  8e 01        movw r17:r16, r29:r28          
  0738:  0f 5d        subi r16, 0xdf                 
  073a:  1f 4f        sbci r17, 0xff                 
  073c:  84 2e        mov r8, r20                    
  073e:  91 2c        mov r9, r1                     
  0740:  b1 2c        mov r11, r1                    
  0742:  a1 2c        mov r10, r1                    
L_0744:
  0744:  a5 01        movw r21:r20, r11:r10          
  0746:  94 01        movw r19:r18, r9:r8            
  0748:  0e 94 7c 13  call F_26f8                    ; -> 0x26f8
  074c:  e6 2f        mov r30, r22                   
  074e:  b9 01        movw r23:r22, r19:r18          
  0750:  ca 01        movw r25:r24, r21:r20          
  0752:  ea 30        cpi r30, 0x0a                  
  0754:  f4 f4        brge L_0792                    ; -> 0x0792
  0756:  e0 5d        subi r30, 0xd0                 
L_0758:
  0758:  d8 01        movw r27:r26, r17:r16          
  075a:  ee 93        st -X, r30                     
  075c:  8d 01        movw r17:r16, r27:r26          
  075e:  23 2b        or r18, r19                    
  0760:  24 2b        or r18, r20                    
  0762:  25 2b        or r18, r21                    
  0764:  79 f7        brne L_0744                    ; -> 0x0744
  0766:  90 e0        ldi r25, 0x00                  
  0768:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  076a:  10 97        sbiw r27:r26, 0                
  076c:  19 f0        breq L_0774                    ; -> 0x0774
  076e:  cd 01        movw r25:r24, r27:r26          
  0770:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
L_0774:
  0774:  a1 96        adiw r29:r28, 33               
  0776:  0f b6        in r0, 0x3f                    ; SREG
  0778:  f8 94        cli                            
  077a:  de bf        out 0x3e, r29                  ; SPH
  077c:  0f be        out 0x3f, r0                   ; SREG
  077e:  cd bf        out 0x3d, r28                  ; SPL
  0780:  df 91        pop r29                        
  0782:  cf 91        pop r28                        
  0784:  1f 91        pop r17                        
  0786:  0f 91        pop r16                        
  0788:  bf 90        pop r11                        
  078a:  af 90        pop r10                        
  078c:  9f 90        pop r9                         
  078e:  8f 90        pop r8                         
  0790:  08 95        ret                            
L_0792:
  0792:  e9 5c        subi r30, 0xc9                 
  0794:  e1 cf        rjmp L_0758                    ; -> 0x0758

; ===== F_0796 =====
F_0796:
  0796:  cf 93        push r28                       
  0798:  df 93        push r29                       
  079a:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  079e:  ec 01        movw r29:r28, r25:r24          
  07a0:  84 e2        ldi r24, 0x24                  
  07a2:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0124 (292)
  07a4:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  07a8:  8c 0f        add r24, r28                   
  07aa:  9d 1f        adc r25, r29                   
  07ac:  df 91        pop r29                        
  07ae:  cf 91        pop r28                        
  07b0:  08 95        ret                            

; ===== F_07b2 =====
F_07b2:
  07b2:  0f 93        push r16                       
  07b4:  1f 93        push r17                       
  07b6:  fc 01        movw r31:r30, r25:r24          
  07b8:  00 e0        ldi r16, 0x00                  
  07ba:  12 e1        ldi r17, 0x12                  ; r17:r16 = 0x1200 (4608)
  07bc:  2a e7        ldi r18, 0x7a                  
  07be:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x007a (122)
  07c0:  90 e0        ldi r25, 0x00                  
L_07c2:
  07c2:  40 17        cp r20, r16                    
  07c4:  51 07        cpc r21, r17                   
  07c6:  62 07        cpc r22, r18                   
  07c8:  73 07        cpc r23, r19                   
  07ca:  40 f4        brcc L_07dc                    ; -> 0x07dc
  07cc:  36 95        lsr r19                        
  07ce:  27 95        ror r18                        
  07d0:  17 95        ror r17                        
  07d2:  07 95        ror r16                        
  07d4:  9f 5f        subi r25, 0xff                 
  07d6:  96 30        cpi r25, 0x06                  
  07d8:  a1 f7        brne L_07c2                    ; -> 0x07c2
  07da:  97 e0        ldi r25, 0x07                  
L_07dc:
  07dc:  29 2f        mov r18, r25                   
  07de:  28 6b        ori r18, 0xb8                  
  07e0:  26 95        lsr r18                        
  07e2:  20 83        st Z, r18                      
  07e4:  90 95        com r25                        
  07e6:  91 70        andi r25, 0x01                 
  07e8:  91 83        std Z+1, r25                   
  07ea:  1f 91        pop r17                        
  07ec:  0f 91        pop r16                        
  07ee:  08 95        ret                            

; ===== F_07f0 =====
F_07f0:
  07f0:  cf 92        push r12                       
  07f2:  df 92        push r13                       
  07f4:  ef 92        push r14                       
  07f6:  ff 92        push r15                       
  07f8:  0f 93        push r16                       
  07fa:  1f 93        push r17                       
  07fc:  cf 93        push r28                       
  07fe:  df 93        push r29                       
  0800:  00 d0        rcall F_0802                   ; -> 0x0802

; ===== F_0802 =====
F_0802:
  0802:  cd b7        in r28, 0x3d                   ; SPL
  0804:  de b7        in r29, 0x3e                   ; SPH
  0806:  f8 2e        mov r15, r24                   
  0808:  16 2f        mov r17, r22                   
  080a:  04 2f        mov r16, r20                   
  080c:  d5 2e        mov r13, r21                   
  080e:  80 91 f9 02  lds r24, 0x02f9                ; v_02f9
  0812:  88 23        tst r24                        
  0814:  09 f4        brne L_0818                    ; -> 0x0818
  0816:  46 c0        rjmp L_08a4                    ; -> 0x08a4
L_0818:
  0818:  80 91 fa 02  lds r24, 0x02fa                ; v_02fa
  081c:  88 23        tst r24                        
  081e:  c9 f1        breq L_0892                    ; -> 0x0892
  0820:  40 91 00 03  lds r20, 0x0300                ; v_0300
  0824:  50 91 01 03  lds r21, 0x0301                ; v_0301
  0828:  60 91 02 03  lds r22, 0x0302                ; v_0302
  082c:  70 91 03 03  lds r23, 0x0303                ; v_0303
L_0830:
  0830:  ce 01        movw r25:r24, r29:r28          
  0832:  01 96        adiw r25:r24, 1                
  0834:  0e 94 d9 03  call F_07b2                    ; -> 0x07b2
  0838:  89 81        ldd r24, Y+1                   
  083a:  9a 81        ldd r25, Y+2                   
  083c:  0e 94 77 03  call F_06ee                    ; -> 0x06ee
  0840:  60 e0        ldi r22, 0x00                  
  0842:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  0846:  0e 94 12 02  call fnA_0424                  ; -> 0x0424
  084a:  80 91 fb 02  lds r24, 0x02fb                ; v_02fb
  084e:  8f 29        or r24, r15                    
  0850:  0e 94 70 03  call F_06e0                    ; -> 0x06e0
  0854:  c0 2e        mov r12, r16                   
  0856:  e0 2e        mov r14, r16                   
  0858:  fd 2c        mov r15, r13                   
L_085a:
  085a:  80 e0        ldi r24, 0x00                  
  085c:  0e 94 70 03  call F_06e0                    ; -> 0x06e0
  0860:  d7 01        movw r27:r26, r15:r14          
  0862:  8d 93        st X+, r24                     
  0864:  7d 01        movw r15:r14, r27:r26          
  0866:  8a 2f        mov r24, r26                   
  0868:  8c 19        sub r24, r12                   
  086a:  81 17        cp r24, r17                    
  086c:  b0 f3        brcs L_085a                    ; -> 0x085a
  086e:  61 e0        ldi r22, 0x01                  
  0870:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  0874:  0e 94 12 02  call fnA_0424                  ; -> 0x0424
L_0878:
  0878:  81 e0        ldi r24, 0x01                  
  087a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
L_087c:
  087c:  0f 90        pop r0                         
  087e:  0f 90        pop r0                         
  0880:  df 91        pop r29                        
  0882:  cf 91        pop r28                        
  0884:  1f 91        pop r17                        
  0886:  0f 91        pop r16                        
  0888:  ff 90        pop r15                        
  088a:  ef 90        pop r14                        
  088c:  df 90        pop r13                        
  088e:  cf 90        pop r12                        
  0890:  08 95        ret                            
L_0892:
  0892:  40 91 fc 02  lds r20, 0x02fc                ; v_02fc
  0896:  50 91 fd 02  lds r21, 0x02fd                ; v_02fd
  089a:  60 91 fe 02  lds r22, 0x02fe                ; v_02fe
  089e:  70 91 ff 02  lds r23, 0x02ff                ; v_02ff
  08a2:  c6 cf        rjmp L_0830                    ; -> 0x0830
L_08a4:
  08a4:  80 91 ee 02  lds r24, 0x02ee                ; v_02ee
  08a8:  90 91 ef 02  lds r25, 0x02ef                ; v_02ef
  08ac:  20 91 ed 02  lds r18, 0x02ed                ; v_02ed
  08b0:  31 e0        ldi r19, 0x01                  
  08b2:  30 93 20 02  sts 0x0220, r19                ; v_0220
  08b6:  20 93 42 02  sts 0x0242, r18                ; v_0242
  08ba:  10 92 21 02  sts 0x0221, r1                 ; v_0221
  08be:  10 92 43 02  sts 0x0243, r1                 ; v_0243
  08c2:  dc 01        movw r27:r26, r25:r24          
  08c4:  ed 91        ld r30, X+                     
  08c6:  fc 91        ld r31, X                      
  08c8:  01 90        ld r0, Z+                      
  08ca:  f0 81        ld r31, Z                      
  08cc:  e0 2d        mov r30, r0                    
  08ce:  6f 2d        mov r22, r15                   
  08d0:  09 95        icall                          
  08d2:  80 e0        ldi r24, 0x00                  
  08d4:  0e 94 87 00  call F_010e                    ; -> 0x010e
L_08d8:
  08d8:  80 91 1f 02  lds r24, 0x021f                ; v_021f
  08dc:  81 11        cpse r24, r1                   
  08de:  fc cf        rjmp L_08d8                    ; -> 0x08d8
  08e0:  80 91 ed 02  lds r24, 0x02ed                ; v_02ed
  08e4:  91 e0        ldi r25, 0x01                  
  08e6:  90 93 1f 02  sts 0x021f, r25                ; v_021f
  08ea:  90 93 1e 02  sts 0x021e, r25                ; v_021e
  08ee:  2f ef        ldi r18, 0xff                  
  08f0:  20 93 1d 02  sts 0x021d, r18                ; v_021d
  08f4:  10 92 1c 02  sts 0x021c, r1                 ; v_021c
  08f8:  21 0f        add r18, r17                   
  08fa:  20 93 1b 02  sts 0x021b, r18                ; v_021b
  08fe:  90 93 fa 01  sts 0x01fa, r25                ; v_01fa
  0902:  90 91 fa 01  lds r25, 0x01fa                ; v_01fa
  0906:  88 0f        lsl r24                        
  0908:  89 2b        or r24, r25                    
  090a:  80 93 fa 01  sts 0x01fa, r24                ; v_01fa
  090e:  80 91 f9 01  lds r24, 0x01f9                ; v_01f9
  0912:  81 30        cpi r24, 0x01                  
  0914:  09 f0        breq L_0918                    ; -> 0x0918
  0916:  41 c0        rjmp L_099a                    ; -> 0x099a
L_0918:
  0918:  10 92 f9 01  sts 0x01f9, r1                 ; v_01f9
L_091c:
  091c:  80 91 fa 01  lds r24, 0x01fa                ; v_01fa
  0920:  80 93 bb 00  sts 0x00bb, r24                ; TWDR
  0924:  80 91 bc 00  lds r24, 0x00bc                ; TWCR
  0928:  83 fd        sbrc r24, 3                    
  092a:  f8 cf        rjmp L_091c                    ; -> 0x091c
  092c:  85 ec        ldi r24, 0xc5                  
L_092e:
  092e:  80 93 bc 00  sts 0x00bc, r24                ; TWCR
L_0932:
  0932:  80 91 1f 02  lds r24, 0x021f                ; v_021f
  0936:  81 30        cpi r24, 0x01                  
  0938:  e1 f3        breq L_0932                    ; -> 0x0932
  093a:  80 91 1c 02  lds r24, 0x021c                ; v_021c
  093e:  91 2f        mov r25, r17                   
  0940:  81 17        cp r24, r17                    
  0942:  10 f4        brcc L_0948                    ; -> 0x0948
  0944:  90 91 1c 02  lds r25, 0x021c                ; v_021c
L_0948:
  0948:  ab ef        ldi r26, 0xfb                  
  094a:  b1 e0        ldi r27, 0x01                  ; r27:r26 = 0x01fb (507)
  094c:  e9 ed        ldi r30, 0xd9                  
  094e:  f1 e0        ldi r31, 0x01                  ; r31:r30 = 0x01d9 (473)
  0950:  80 e0        ldi r24, 0x00                  
L_0952:
  0952:  89 13        cpse r24, r25                  
  0954:  24 c0        rjmp L_099e                    ; -> 0x099e
  0956:  10 92 d8 01  sts 0x01d8, r1                 ; v_01d8
  095a:  80 93 d7 01  sts 0x01d7, r24                ; v_01d7
  095e:  90 e0        ldi r25, 0x00                  
  0960:  90 93 f5 02  sts 0x02f5, r25                ; v_02f5
  0964:  80 93 f4 02  sts 0x02f4, r24                ; v_02f4
  0968:  18 17        cp r17, r24                    
  096a:  19 06        cpc r1, r25                    
  096c:  e1 f4        brne L_09a6                    ; -> 0x09a6
  096e:  c0 2e        mov r12, r16                   
  0970:  e0 2e        mov r14, r16                   
  0972:  fd 2c        mov r15, r13                   
L_0974:
  0974:  80 91 ee 02  lds r24, 0x02ee                ; v_02ee
  0978:  90 91 ef 02  lds r25, 0x02ef                ; v_02ef
  097c:  dc 01        movw r27:r26, r25:r24          
  097e:  ed 91        ld r30, X+                     
  0980:  fc 91        ld r31, X                      
  0982:  02 84        ldd r0, Z+10                   
  0984:  f3 85        ldd r31, Z+11                  
  0986:  e0 2d        mov r30, r0                    
  0988:  09 95        icall                          
  098a:  f7 01        movw r31:r30, r15:r14          
  098c:  81 93        st Z+, r24                     
  098e:  7f 01        movw r15:r14, r31:r30          
  0990:  8e 2f        mov r24, r30                   
  0992:  8c 19        sub r24, r12                   
  0994:  81 17        cp r24, r17                    
  0996:  70 f3        brcs L_0974                    ; -> 0x0974
  0998:  6f cf        rjmp L_0878                    ; -> 0x0878
L_099a:
  099a:  85 ee        ldi r24, 0xe5                  
  099c:  c8 cf        rjmp L_092e                    ; -> 0x092e
L_099e:
  099e:  2d 91        ld r18, X+                     
  09a0:  21 93        st Z+, r18                     
  09a2:  8f 5f        subi r24, 0xff                 
  09a4:  d6 cf        rjmp L_0952                    ; -> 0x0952
L_09a6:
  09a6:  8f ef        ldi r24, 0xff                  
  09a8:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  09aa:  68 cf        rjmp L_087c                    ; -> 0x087c

; ===== fnE_09ac =====
fnE_09ac:
  09ac:  2f 92        push r2                        
  09ae:  3f 92        push r3                        
  09b0:  4f 92        push r4                        
  09b2:  5f 92        push r5                        
  09b4:  6f 92        push r6                        
  09b6:  7f 92        push r7                        
  09b8:  8f 92        push r8                        
  09ba:  9f 92        push r9                        
  09bc:  af 92        push r10                       
  09be:  bf 92        push r11                       
  09c0:  cf 92        push r12                       
  09c2:  df 92        push r13                       
  09c4:  ef 92        push r14                       
  09c6:  ff 92        push r15                       
  09c8:  0f 93        push r16                       
  09ca:  1f 93        push r17                       
  09cc:  cf 93        push r28                       
  09ce:  df 93        push r29                       
  09d0:  cd b7        in r28, 0x3d                   ; SPL
  09d2:  de b7        in r29, 0x3e                   ; SPH
  09d4:  6a 97        sbiw r29:r28, 26               
  09d6:  0f b6        in r0, 0x3f                    ; SREG
  09d8:  f8 94        cli                            
  09da:  de bf        out 0x3e, r29                  ; SPH
  09dc:  0f be        out 0x3f, r0                   ; SREG
  09de:  cd bf        out 0x3d, r28                  ; SPL
  09e0:  81 e0        ldi r24, 0x01                  
  09e2:  80 93 fa 02  sts 0x02fa, r24                ; v_02fa
  09e6:  46 e0        ldi r20, 0x06                  
  09e8:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x0306 (774)
  09ea:  65 e1        ldi r22, 0x15                  
  09ec:  80 91 3c 04  lds r24, 0x043c                ; v_043c
  09f0:  0e 94 f8 03  call F_07f0                    ; -> 0x07f0
  09f4:  97 fd        sbrc r25, 7                    
  09f6:  fa c2        rjmp L_0fec                    ; -> 0x0fec
  09f8:  a0 90 06 03  lds r10, 0x0306                ; v_0306
  09fc:  b0 90 07 03  lds r11, 0x0307                ; v_0307
  0a00:  ba 24        eor r11, r10                   
  0a02:  ab 24        eor r10, r11                   
  0a04:  ba 24        eor r11, r10                   
  0a06:  b0 92 1c 03  sts 0x031c, r11                ; v_031c
  0a0a:  a0 92 1b 03  sts 0x031b, r10                ; v_031b
  0a0e:  c0 90 08 03  lds r12, 0x0308                ; v_0308
  0a12:  d0 90 09 03  lds r13, 0x0309                ; v_0309
  0a16:  dc 24        eor r13, r12                   
  0a18:  cd 24        eor r12, r13                   
  0a1a:  dc 24        eor r13, r12                   
  0a1c:  d0 92 1e 03  sts 0x031e, r13                ; v_031e
  0a20:  c0 92 1d 03  sts 0x031d, r12                ; v_031d
  0a24:  e0 90 0a 03  lds r14, 0x030a                ; v_030a
  0a28:  f0 90 0b 03  lds r15, 0x030b                ; v_030b
  0a2c:  fe 24        eor r15, r14                   
  0a2e:  ef 24        eor r14, r15                   
  0a30:  fe 24        eor r15, r14                   
  0a32:  f0 92 20 03  sts 0x0320, r15                ; v_0320
  0a36:  e0 92 1f 03  sts 0x031f, r14                ; v_031f
  0a3a:  60 91 0c 03  lds r22, 0x030c                ; v_030c
  0a3e:  70 91 0d 03  lds r23, 0x030d                ; v_030d
  0a42:  36 2f        mov r19, r22                   
  0a44:  27 2f        mov r18, r23                   
  0a46:  3a 83        std Y+2, r19                   
  0a48:  29 83        std Y+1, r18                   
  0a4a:  30 93 2e 03  sts 0x032e, r19                ; v_032e
  0a4e:  20 93 2d 03  sts 0x032d, r18                ; v_032d
  0a52:  80 90 0e 03  lds r8, 0x030e                 ; v_030e
  0a56:  90 90 0f 03  lds r9, 0x030f                 ; v_030f
  0a5a:  98 24        eor r9, r8                     
  0a5c:  89 24        eor r8, r9                     
  0a5e:  98 24        eor r9, r8                     
  0a60:  90 92 22 03  sts 0x0322, r9                 ; v_0322
  0a64:  80 92 21 03  sts 0x0321, r8                 ; v_0321
  0a68:  00 91 10 03  lds r16, 0x0310                ; v_0310
  0a6c:  10 91 11 03  lds r17, 0x0311                ; v_0311
  0a70:  10 27        eor r17, r16                   
  0a72:  01 27        eor r16, r17                   
  0a74:  10 27        eor r17, r16                   
  0a76:  10 93 24 03  sts 0x0324, r17                ; v_0324
  0a7a:  00 93 23 03  sts 0x0323, r16                ; v_0323
  0a7e:  40 91 12 03  lds r20, 0x0312                ; v_0312
  0a82:  50 91 13 03  lds r21, 0x0313                ; v_0313
  0a86:  54 27        eor r21, r20                   
  0a88:  45 27        eor r20, r21                   
  0a8a:  54 27        eor r21, r20                   
  0a8c:  5a 8f        std Y+26, r21                  
  0a8e:  49 8f        std Y+25, r20                  
  0a90:  50 93 26 03  sts 0x0326, r21                ; v_0326
  0a94:  40 93 25 03  sts 0x0325, r20                ; v_0325
  0a98:  80 91 14 03  lds r24, 0x0314                ; v_0314
  0a9c:  90 91 15 03  lds r25, 0x0315                ; v_0315
  0aa0:  9c 83        std Y+4, r25                   
  0aa2:  8b 83        std Y+3, r24                   
  0aa4:  90 93 28 03  sts 0x0328, r25                ; v_0328
  0aa8:  80 93 27 03  sts 0x0327, r24                ; v_0327
  0aac:  20 91 16 03  lds r18, 0x0316                ; v_0316
  0ab0:  30 91 17 03  lds r19, 0x0317                ; v_0317
  0ab4:  3e 83        std Y+6, r19                   
  0ab6:  2d 83        std Y+5, r18                   
  0ab8:  30 93 2a 03  sts 0x032a, r19                ; v_032a
  0abc:  20 93 29 03  sts 0x0329, r18                ; v_0329
  0ac0:  40 91 18 03  lds r20, 0x0318                ; v_0318
  0ac4:  50 91 19 03  lds r21, 0x0319                ; v_0319
  0ac8:  58 87        std Y+8, r21                   
  0aca:  4f 83        std Y+7, r20                   
  0acc:  50 93 2c 03  sts 0x032c, r21                ; v_032c
  0ad0:  40 93 2b 03  sts 0x032b, r20                ; v_032b
  0ad4:  80 91 22 04  lds r24, 0x0422                ; v_0422
  0ad8:  90 91 23 04  lds r25, 0x0423                ; v_0423
  0adc:  9a 87        std Y+10, r25                  
  0ade:  89 87        std Y+9, r24                   
  0ae0:  20 91 24 04  lds r18, 0x0424                ; v_0424
  0ae4:  30 91 25 04  lds r19, 0x0425                ; v_0425
  0ae8:  3c 87        std Y+12, r19                  
  0aea:  2b 87        std Y+11, r18                  
  0aec:  40 91 26 04  lds r20, 0x0426                ; v_0426
  0af0:  50 91 27 04  lds r21, 0x0427                ; v_0427
  0af4:  5e 87        std Y+14, r21                  
  0af6:  4d 87        std Y+13, r20                  
  0af8:  40 90 58 03  lds r4, 0x0358                 ; v_0358
  0afc:  50 90 59 03  lds r5, 0x0359                 ; v_0359
  0b00:  60 90 5a 03  lds r6, 0x035a                 ; v_035a
  0b04:  70 90 5b 03  lds r7, 0x035b                 ; v_035b
  0b08:  9c 01        movw r19:r18, r25:r24          
  0b0a:  a2 9e        mul r10, r18                   
  0b0c:  c0 01        movw r25:r24, r1:r0            
  0b0e:  a3 9e        mul r10, r19                   
  0b10:  90 0d        add r25, r0                    
  0b12:  b2 9e        mul r11, r18                   
  0b14:  90 0d        add r25, r0                    
  0b16:  11 24        clr r1                         
  0b18:  4b 85        ldd r20, Y+11                  
  0b1a:  5c 85        ldd r21, Y+12                  
  0b1c:  c4 9e        mul r12, r20                   
  0b1e:  b0 01        movw r23:r22, r1:r0            
  0b20:  c5 9e        mul r12, r21                   
  0b22:  70 0d        add r23, r0                    
  0b24:  d4 9e        mul r13, r20                   
  0b26:  70 0d        add r23, r0                    
  0b28:  11 24        clr r1                         
  0b2a:  68 0f        add r22, r24                   
  0b2c:  79 1f        adc r23, r25                   
  0b2e:  2d 85        ldd r18, Y+13                  
  0b30:  3e 85        ldd r19, Y+14                  
  0b32:  e2 9e        mul r14, r18                   
  0b34:  c0 01        movw r25:r24, r1:r0            
  0b36:  e3 9e        mul r14, r19                   
  0b38:  90 0d        add r25, r0                    
  0b3a:  f2 9e        mul r15, r18                   
  0b3c:  90 0d        add r25, r0                    
  0b3e:  11 24        clr r1                         
  0b40:  68 0f        add r22, r24                   
  0b42:  79 1f        adc r23, r25                   
  0b44:  07 2e        mov r0, r23                    
  0b46:  00 0c        lsl r0                         
  0b48:  88 0b        sbc r24, r24                   
  0b4a:  99 0b        sbc r25, r25                   
  0b4c:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0b50:  a3 01        movw r21:r20, r7:r6            
  0b52:  92 01        movw r19:r18, r5:r4            
  0b54:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0b58:  20 91 b9 03  lds r18, 0x03b9                ; v_03b9
  0b5c:  30 91 ba 03  lds r19, 0x03ba                ; v_03ba
  0b60:  40 91 bb 03  lds r20, 0x03bb                ; v_03bb
  0b64:  50 91 bc 03  lds r21, 0x03bc                ; v_03bc
  0b68:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0b6c:  20 91 c5 03  lds r18, 0x03c5                ; v_03c5
  0b70:  30 91 c6 03  lds r19, 0x03c6                ; v_03c6
  0b74:  40 91 c7 03  lds r20, 0x03c7                ; v_03c7
  0b78:  50 91 c8 03  lds r21, 0x03c8                ; v_03c8
  0b7c:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0b80:  60 93 2f 03  sts 0x032f, r22                ; v_032f
  0b84:  70 93 30 03  sts 0x0330, r23                ; v_0330
  0b88:  80 93 31 03  sts 0x0331, r24                ; v_0331
  0b8c:  90 93 32 03  sts 0x0332, r25                ; v_0332
  0b90:  40 91 28 04  lds r20, 0x0428                ; v_0428
  0b94:  50 91 29 04  lds r21, 0x0429                ; v_0429
  0b98:  58 8b        std Y+16, r21                  
  0b9a:  4f 87        std Y+15, r20                  
  0b9c:  80 91 2a 04  lds r24, 0x042a                ; v_042a
  0ba0:  90 91 2b 04  lds r25, 0x042b                ; v_042b
  0ba4:  9a 8b        std Y+18, r25                  
  0ba6:  89 8b        std Y+17, r24                  
  0ba8:  20 91 2c 04  lds r18, 0x042c                ; v_042c
  0bac:  30 91 2d 04  lds r19, 0x042d                ; v_042d
  0bb0:  3c 8b        std Y+20, r19                  
  0bb2:  2b 8b        std Y+19, r18                  
  0bb4:  a4 9e        mul r10, r20                   
  0bb6:  c0 01        movw r25:r24, r1:r0            
  0bb8:  a5 9e        mul r10, r21                   
  0bba:  90 0d        add r25, r0                    
  0bbc:  b4 9e        mul r11, r20                   
  0bbe:  90 0d        add r25, r0                    
  0bc0:  11 24        clr r1                         
  0bc2:  49 89        ldd r20, Y+17                  
  0bc4:  5a 89        ldd r21, Y+18                  
  0bc6:  c4 9e        mul r12, r20                   
  0bc8:  b0 01        movw r23:r22, r1:r0            
  0bca:  c5 9e        mul r12, r21                   
  0bcc:  70 0d        add r23, r0                    
  0bce:  d4 9e        mul r13, r20                   
  0bd0:  70 0d        add r23, r0                    
  0bd2:  11 24        clr r1                         
  0bd4:  68 0f        add r22, r24                   
  0bd6:  79 1f        adc r23, r25                   
  0bd8:  e2 9e        mul r14, r18                   
  0bda:  c0 01        movw r25:r24, r1:r0            
  0bdc:  e3 9e        mul r14, r19                   
  0bde:  90 0d        add r25, r0                    
  0be0:  f2 9e        mul r15, r18                   
  0be2:  90 0d        add r25, r0                    
  0be4:  11 24        clr r1                         
  0be6:  68 0f        add r22, r24                   
  0be8:  79 1f        adc r23, r25                   
  0bea:  07 2e        mov r0, r23                    
  0bec:  00 0c        lsl r0                         
  0bee:  88 0b        sbc r24, r24                   
  0bf0:  99 0b        sbc r25, r25                   
  0bf2:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0bf6:  a3 01        movw r21:r20, r7:r6            
  0bf8:  92 01        movw r19:r18, r5:r4            
  0bfa:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0bfe:  20 91 bd 03  lds r18, 0x03bd                ; v_03bd
  0c02:  30 91 be 03  lds r19, 0x03be                ; v_03be
  0c06:  40 91 bf 03  lds r20, 0x03bf                ; v_03bf
  0c0a:  50 91 c0 03  lds r21, 0x03c0                ; v_03c0
  0c0e:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0c12:  20 91 c9 03  lds r18, 0x03c9                ; v_03c9
  0c16:  30 91 ca 03  lds r19, 0x03ca                ; v_03ca
  0c1a:  40 91 cb 03  lds r20, 0x03cb                ; v_03cb
  0c1e:  50 91 cc 03  lds r21, 0x03cc                ; v_03cc
  0c22:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0c26:  60 93 33 03  sts 0x0333, r22                ; v_0333
  0c2a:  70 93 34 03  sts 0x0334, r23                ; v_0334
  0c2e:  80 93 35 03  sts 0x0335, r24                ; v_0335
  0c32:  90 93 36 03  sts 0x0336, r25                ; v_0336
  0c36:  80 91 2e 04  lds r24, 0x042e                ; v_042e
  0c3a:  90 91 2f 04  lds r25, 0x042f                ; v_042f
  0c3e:  9e 8b        std Y+22, r25                  
  0c40:  8d 8b        std Y+21, r24                  
  0c42:  20 91 30 04  lds r18, 0x0430                ; v_0430
  0c46:  30 91 31 04  lds r19, 0x0431                ; v_0431
  0c4a:  38 8f        std Y+24, r19                  
  0c4c:  2f 8b        std Y+23, r18                  
  0c4e:  20 90 32 04  lds r2, 0x0432                 ; v_0432
  0c52:  30 90 33 04  lds r3, 0x0433                 ; v_0433
  0c56:  a8 9e        mul r10, r24                   
  0c58:  b0 01        movw r23:r22, r1:r0            
  0c5a:  a9 9e        mul r10, r25                   
  0c5c:  70 0d        add r23, r0                    
  0c5e:  b8 9e        mul r11, r24                   
  0c60:  70 0d        add r23, r0                    
  0c62:  11 24        clr r1                         
  0c64:  c2 9e        mul r12, r18                   
  0c66:  c0 01        movw r25:r24, r1:r0            
  0c68:  c3 9e        mul r12, r19                   
  0c6a:  90 0d        add r25, r0                    
  0c6c:  d2 9e        mul r13, r18                   
  0c6e:  90 0d        add r25, r0                    
  0c70:  11 24        clr r1                         
  0c72:  68 0f        add r22, r24                   
  0c74:  79 1f        adc r23, r25                   
  0c76:  e2 9c        mul r14, r2                    
  0c78:  c0 01        movw r25:r24, r1:r0            
  0c7a:  e3 9c        mul r14, r3                    
  0c7c:  90 0d        add r25, r0                    
  0c7e:  f2 9c        mul r15, r2                    
  0c80:  90 0d        add r25, r0                    
  0c82:  11 24        clr r1                         
  0c84:  68 0f        add r22, r24                   
  0c86:  79 1f        adc r23, r25                   
  0c88:  07 2e        mov r0, r23                    
  0c8a:  00 0c        lsl r0                         
  0c8c:  88 0b        sbc r24, r24                   
  0c8e:  99 0b        sbc r25, r25                   
  0c90:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0c94:  a3 01        movw r21:r20, r7:r6            
  0c96:  92 01        movw r19:r18, r5:r4            
  0c98:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0c9c:  20 91 c1 03  lds r18, 0x03c1                ; v_03c1
  0ca0:  30 91 c2 03  lds r19, 0x03c2                ; v_03c2
  0ca4:  40 91 c3 03  lds r20, 0x03c3                ; v_03c3
  0ca8:  50 91 c4 03  lds r21, 0x03c4                ; v_03c4
  0cac:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0cb0:  20 91 cd 03  lds r18, 0x03cd                ; v_03cd
  0cb4:  30 91 ce 03  lds r19, 0x03ce                ; v_03ce
  0cb8:  40 91 cf 03  lds r20, 0x03cf                ; v_03cf
  0cbc:  50 91 d0 03  lds r21, 0x03d0                ; v_03d0
  0cc0:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0cc4:  60 93 37 03  sts 0x0337, r22                ; v_0337
  0cc8:  70 93 38 03  sts 0x0338, r23                ; v_0338
  0ccc:  80 93 39 03  sts 0x0339, r24                ; v_0339
  0cd0:  90 93 3a 03  sts 0x033a, r25                ; v_033a
  0cd4:  c0 90 5c 03  lds r12, 0x035c                ; v_035c
  0cd8:  d0 90 5d 03  lds r13, 0x035d                ; v_035d
  0cdc:  e0 90 5e 03  lds r14, 0x035e                ; v_035e
  0ce0:  f0 90 5f 03  lds r15, 0x035f                ; v_035f
  0ce4:  49 85        ldd r20, Y+9                   
  0ce6:  5a 85        ldd r21, Y+10                  
  0ce8:  84 9e        mul r8, r20                    
  0cea:  b0 01        movw r23:r22, r1:r0            
  0cec:  85 9e        mul r8, r21                    
  0cee:  70 0d        add r23, r0                    
  0cf0:  94 9e        mul r9, r20                    
  0cf2:  70 0d        add r23, r0                    
  0cf4:  11 24        clr r1                         
  0cf6:  2b 85        ldd r18, Y+11                  
  0cf8:  3c 85        ldd r19, Y+12                  
  0cfa:  02 9f        mul r16, r18                   
  0cfc:  c0 01        movw r25:r24, r1:r0            
  0cfe:  03 9f        mul r16, r19                   
  0d00:  90 0d        add r25, r0                    
  0d02:  12 9f        mul r17, r18                   
  0d04:  90 0d        add r25, r0                    
  0d06:  11 24        clr r1                         
  0d08:  68 0f        add r22, r24                   
  0d0a:  79 1f        adc r23, r25                   
  0d0c:  49 8d        ldd r20, Y+25                  
  0d0e:  5a 8d        ldd r21, Y+26                  
  0d10:  2d 85        ldd r18, Y+13                  
  0d12:  3e 85        ldd r19, Y+14                  
  0d14:  42 9f        mul r20, r18                   
  0d16:  c0 01        movw r25:r24, r1:r0            
  0d18:  43 9f        mul r20, r19                   
  0d1a:  90 0d        add r25, r0                    
  0d1c:  52 9f        mul r21, r18                   
  0d1e:  90 0d        add r25, r0                    
  0d20:  11 24        clr r1                         
  0d22:  68 0f        add r22, r24                   
  0d24:  79 1f        adc r23, r25                   
  0d26:  07 2e        mov r0, r23                    
  0d28:  00 0c        lsl r0                         
  0d2a:  88 0b        sbc r24, r24                   
  0d2c:  99 0b        sbc r25, r25                   
  0d2e:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0d32:  a7 01        movw r21:r20, r15:r14          
  0d34:  96 01        movw r19:r18, r13:r12          
  0d36:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0d3a:  20 91 89 03  lds r18, 0x0389                ; v_0389
  0d3e:  30 91 8a 03  lds r19, 0x038a                ; v_038a
  0d42:  40 91 8b 03  lds r20, 0x038b                ; v_038b
  0d46:  50 91 8c 03  lds r21, 0x038c                ; v_038c
  0d4a:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0d4e:  60 93 3b 03  sts 0x033b, r22                ; v_033b
  0d52:  70 93 3c 03  sts 0x033c, r23                ; v_033c
  0d56:  80 93 3d 03  sts 0x033d, r24                ; v_033d
  0d5a:  90 93 3e 03  sts 0x033e, r25                ; v_033e
  0d5e:  4f 85        ldd r20, Y+15                  
  0d60:  58 89        ldd r21, Y+16                  
  0d62:  84 9e        mul r8, r20                    
  0d64:  c0 01        movw r25:r24, r1:r0            
  0d66:  85 9e        mul r8, r21                    
  0d68:  90 0d        add r25, r0                    
  0d6a:  94 9e        mul r9, r20                    
  0d6c:  90 0d        add r25, r0                    
  0d6e:  11 24        clr r1                         
  0d70:  29 89        ldd r18, Y+17                  
  0d72:  3a 89        ldd r19, Y+18                  
  0d74:  02 9f        mul r16, r18                   
  0d76:  b0 01        movw r23:r22, r1:r0            
  0d78:  03 9f        mul r16, r19                   
  0d7a:  70 0d        add r23, r0                    
  0d7c:  12 9f        mul r17, r18                   
  0d7e:  70 0d        add r23, r0                    
  0d80:  11 24        clr r1                         
  0d82:  68 0f        add r22, r24                   
  0d84:  79 1f        adc r23, r25                   
  0d86:  49 8d        ldd r20, Y+25                  
  0d88:  5a 8d        ldd r21, Y+26                  
  0d8a:  2b 89        ldd r18, Y+19                  
  0d8c:  3c 89        ldd r19, Y+20                  
  0d8e:  42 9f        mul r20, r18                   
  0d90:  c0 01        movw r25:r24, r1:r0            
  0d92:  43 9f        mul r20, r19                   
  0d94:  90 0d        add r25, r0                    
  0d96:  52 9f        mul r21, r18                   
  0d98:  90 0d        add r25, r0                    
  0d9a:  11 24        clr r1                         
  0d9c:  68 0f        add r22, r24                   
  0d9e:  79 1f        adc r23, r25                   
  0da0:  07 2e        mov r0, r23                    
  0da2:  00 0c        lsl r0                         
  0da4:  88 0b        sbc r24, r24                   
  0da6:  99 0b        sbc r25, r25                   
  0da8:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0dac:  a7 01        movw r21:r20, r15:r14          
  0dae:  96 01        movw r19:r18, r13:r12          
  0db0:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0db4:  20 91 8d 03  lds r18, 0x038d                ; v_038d
  0db8:  30 91 8e 03  lds r19, 0x038e                ; v_038e
  0dbc:  40 91 8f 03  lds r20, 0x038f                ; v_038f
  0dc0:  50 91 90 03  lds r21, 0x0390                ; v_0390
  0dc4:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0dc8:  60 93 3f 03  sts 0x033f, r22                ; v_033f
  0dcc:  70 93 40 03  sts 0x0340, r23                ; v_0340
  0dd0:  80 93 41 03  sts 0x0341, r24                ; v_0341
  0dd4:  90 93 42 03  sts 0x0342, r25                ; v_0342
  0dd8:  4d 89        ldd r20, Y+21                  
  0dda:  5e 89        ldd r21, Y+22                  
  0ddc:  84 9e        mul r8, r20                    
  0dde:  b0 01        movw r23:r22, r1:r0            
  0de0:  85 9e        mul r8, r21                    
  0de2:  70 0d        add r23, r0                    
  0de4:  94 9e        mul r9, r20                    
  0de6:  70 0d        add r23, r0                    
  0de8:  11 24        clr r1                         
  0dea:  2f 89        ldd r18, Y+23                  
  0dec:  38 8d        ldd r19, Y+24                  
  0dee:  02 9f        mul r16, r18                   
  0df0:  c0 01        movw r25:r24, r1:r0            
  0df2:  03 9f        mul r16, r19                   
  0df4:  90 0d        add r25, r0                    
  0df6:  12 9f        mul r17, r18                   
  0df8:  90 0d        add r25, r0                    
  0dfa:  11 24        clr r1                         
  0dfc:  68 0f        add r22, r24                   
  0dfe:  79 1f        adc r23, r25                   
  0e00:  49 8d        ldd r20, Y+25                  
  0e02:  5a 8d        ldd r21, Y+26                  
  0e04:  42 9d        mul r20, r2                    
  0e06:  c0 01        movw r25:r24, r1:r0            
  0e08:  43 9d        mul r20, r3                    
  0e0a:  90 0d        add r25, r0                    
  0e0c:  52 9d        mul r21, r2                    
  0e0e:  90 0d        add r25, r0                    
  0e10:  11 24        clr r1                         
  0e12:  68 0f        add r22, r24                   
  0e14:  79 1f        adc r23, r25                   
  0e16:  07 2e        mov r0, r23                    
  0e18:  00 0c        lsl r0                         
  0e1a:  88 0b        sbc r24, r24                   
  0e1c:  99 0b        sbc r25, r25                   
  0e1e:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0e22:  a7 01        movw r21:r20, r15:r14          
  0e24:  96 01        movw r19:r18, r13:r12          
  0e26:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0e2a:  20 91 91 03  lds r18, 0x0391                ; v_0391
  0e2e:  30 91 92 03  lds r19, 0x0392                ; v_0392
  0e32:  40 91 93 03  lds r20, 0x0393                ; v_0393
  0e36:  50 91 94 03  lds r21, 0x0394                ; v_0394
  0e3a:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0e3e:  60 93 43 03  sts 0x0343, r22                ; v_0343
  0e42:  70 93 44 03  sts 0x0344, r23                ; v_0344
  0e46:  80 93 45 03  sts 0x0345, r24                ; v_0345
  0e4a:  90 93 46 03  sts 0x0346, r25                ; v_0346
  0e4e:  2b 81        ldd r18, Y+3                   
  0e50:  3c 81        ldd r19, Y+4                   
  0e52:  b9 01        movw r23:r22, r19:r18          
  0e54:  33 0f        lsl r19                        
  0e56:  88 0b        sbc r24, r24                   
  0e58:  99 0b        sbc r25, r25                   
  0e5a:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0e5e:  20 91 60 03  lds r18, 0x0360                ; v_0360
  0e62:  30 91 61 03  lds r19, 0x0361                ; v_0361
  0e66:  40 91 62 03  lds r20, 0x0362                ; v_0362
  0e6a:  50 91 63 03  lds r21, 0x0363                ; v_0363
  0e6e:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0e72:  20 91 06 04  lds r18, 0x0406                ; v_0406
  0e76:  30 91 07 04  lds r19, 0x0407                ; v_0407
  0e7a:  40 91 08 04  lds r20, 0x0408                ; v_0408
  0e7e:  50 91 09 04  lds r21, 0x0409                ; v_0409
  0e82:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0e86:  20 91 12 04  lds r18, 0x0412                ; v_0412
  0e8a:  30 91 13 04  lds r19, 0x0413                ; v_0413
  0e8e:  40 91 14 04  lds r20, 0x0414                ; v_0414
  0e92:  50 91 15 04  lds r21, 0x0415                ; v_0415
  0e96:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0e9a:  60 93 47 03  sts 0x0347, r22                ; v_0347
  0e9e:  70 93 48 03  sts 0x0348, r23                ; v_0348
  0ea2:  80 93 49 03  sts 0x0349, r24                ; v_0349
  0ea6:  90 93 4a 03  sts 0x034a, r25                ; v_034a
  0eaa:  4d 81        ldd r20, Y+5                   
  0eac:  5e 81        ldd r21, Y+6                   
  0eae:  ba 01        movw r23:r22, r21:r20          
  0eb0:  55 0f        lsl r21                        
  0eb2:  88 0b        sbc r24, r24                   
  0eb4:  99 0b        sbc r25, r25                   
  0eb6:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0eba:  20 91 64 03  lds r18, 0x0364                ; v_0364
  0ebe:  30 91 65 03  lds r19, 0x0365                ; v_0365
  0ec2:  40 91 66 03  lds r20, 0x0366                ; v_0366
  0ec6:  50 91 67 03  lds r21, 0x0367                ; v_0367
  0eca:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0ece:  20 91 0a 04  lds r18, 0x040a                ; v_040a
  0ed2:  30 91 0b 04  lds r19, 0x040b                ; v_040b
  0ed6:  40 91 0c 04  lds r20, 0x040c                ; v_040c
  0eda:  50 91 0d 04  lds r21, 0x040d                ; v_040d
  0ede:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0ee2:  20 91 16 04  lds r18, 0x0416                ; v_0416
  0ee6:  30 91 17 04  lds r19, 0x0417                ; v_0417
  0eea:  40 91 18 04  lds r20, 0x0418                ; v_0418
  0eee:  50 91 19 04  lds r21, 0x0419                ; v_0419
  0ef2:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0ef6:  60 93 4b 03  sts 0x034b, r22                ; v_034b
  0efa:  70 93 4c 03  sts 0x034c, r23                ; v_034c
  0efe:  80 93 4d 03  sts 0x034d, r24                ; v_034d
  0f02:  90 93 4e 03  sts 0x034e, r25                ; v_034e
  0f06:  2f 81        ldd r18, Y+7                   
  0f08:  38 85        ldd r19, Y+8                   
  0f0a:  b9 01        movw r23:r22, r19:r18          
  0f0c:  33 0f        lsl r19                        
  0f0e:  88 0b        sbc r24, r24                   
  0f10:  99 0b        sbc r25, r25                   
  0f12:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0f16:  20 91 68 03  lds r18, 0x0368                ; v_0368
  0f1a:  30 91 69 03  lds r19, 0x0369                ; v_0369
  0f1e:  40 91 6a 03  lds r20, 0x036a                ; v_036a
  0f22:  50 91 6b 03  lds r21, 0x036b                ; v_036b
  0f26:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0f2a:  20 91 0e 04  lds r18, 0x040e                ; v_040e
  0f2e:  30 91 0f 04  lds r19, 0x040f                ; v_040f
  0f32:  40 91 10 04  lds r20, 0x0410                ; v_0410
  0f36:  50 91 11 04  lds r21, 0x0411                ; v_0411
  0f3a:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0f3e:  20 91 1a 04  lds r18, 0x041a                ; v_041a
  0f42:  30 91 1b 04  lds r19, 0x041b                ; v_041b
  0f46:  40 91 1c 04  lds r20, 0x041c                ; v_041c
  0f4a:  50 91 1d 04  lds r21, 0x041d                ; v_041d
  0f4e:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  0f52:  60 93 4f 03  sts 0x034f, r22                ; v_034f
  0f56:  70 93 50 03  sts 0x0350, r23                ; v_0350
  0f5a:  80 93 51 03  sts 0x0351, r24                ; v_0351
  0f5e:  90 93 52 03  sts 0x0352, r25                ; v_0352
  0f62:  c0 90 70 03  lds r12, 0x0370                ; v_0370
  0f66:  d0 90 71 03  lds r13, 0x0371                ; v_0371
  0f6a:  e0 90 72 03  lds r14, 0x0372                ; v_0372
  0f6e:  f0 90 73 03  lds r15, 0x0373                ; v_0373
  0f72:  49 81        ldd r20, Y+1                   
  0f74:  5a 81        ldd r21, Y+2                   
  0f76:  ba 01        movw r23:r22, r21:r20          
  0f78:  55 0f        lsl r21                        
  0f7a:  88 0b        sbc r24, r24                   
  0f7c:  99 0b        sbc r25, r25                   
  0f7e:  0e 94 b3 14  call F_2966                    ; -> 0x2966
  0f82:  a7 01        movw r21:r20, r15:r14          
  0f84:  96 01        movw r19:r18, r13:r12          
  0f86:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  0f8a:  20 91 6c 03  lds r18, 0x036c                ; v_036c
  0f8e:  30 91 6d 03  lds r19, 0x036d                ; v_036d
  0f92:  40 91 6e 03  lds r20, 0x036e                ; v_036e
  0f96:  50 91 6f 03  lds r21, 0x036f                ; v_036f
  0f9a:  0e 94 10 14  call F_2820                    ; -> 0x2820
  0f9e:  a7 01        movw r21:r20, r15:r14          
  0fa0:  96 01        movw r19:r18, r13:r12          
  0fa2:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  0fa6:  60 93 53 03  sts 0x0353, r22                ; v_0353
  0faa:  70 93 54 03  sts 0x0354, r23                ; v_0354
  0fae:  80 93 55 03  sts 0x0355, r24                ; v_0355
  0fb2:  90 93 56 03  sts 0x0356, r25                ; v_0356
  0fb6:  81 e0        ldi r24, 0x01                  
  0fb8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
L_0fba:
  0fba:  6a 96        adiw r29:r28, 26               
  0fbc:  0f b6        in r0, 0x3f                    ; SREG
  0fbe:  f8 94        cli                            
  0fc0:  de bf        out 0x3e, r29                  ; SPH
  0fc2:  0f be        out 0x3f, r0                   ; SREG
  0fc4:  cd bf        out 0x3d, r28                  ; SPL
  0fc6:  df 91        pop r29                        
  0fc8:  cf 91        pop r28                        
  0fca:  1f 91        pop r17                        
  0fcc:  0f 91        pop r16                        
  0fce:  ff 90        pop r15                        
  0fd0:  ef 90        pop r14                        
  0fd2:  df 90        pop r13                        
  0fd4:  cf 90        pop r12                        
  0fd6:  bf 90        pop r11                        
  0fd8:  af 90        pop r10                        
  0fda:  9f 90        pop r9                         
  0fdc:  8f 90        pop r8                         
  0fde:  7f 90        pop r7                         
  0fe0:  6f 90        pop r6                         
  0fe2:  5f 90        pop r5                         
  0fe4:  4f 90        pop r4                         
  0fe6:  3f 90        pop r3                         
  0fe8:  2f 90        pop r2                         
  0fea:  08 95        ret                            
L_0fec:
  0fec:  8f ef        ldi r24, 0xff                  
  0fee:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  0ff0:  e4 cf        rjmp L_0fba                    ; -> 0x0fba

; ===== fnF_0ff2 =====
fnF_0ff2:
  0ff2:  0f 93        push r16                       
  0ff4:  1f 93        push r17                       
  0ff6:  cf 93        push r28                       
  0ff8:  df 93        push r29                       
  0ffa:  00 d0        rcall F_0ffc                   ; -> 0x0ffc

; ===== F_0ffc =====
F_0ffc:
  0ffc:  cd b7        in r28, 0x3d                   ; SPL
  0ffe:  de b7        in r29, 0x3e                   ; SPH
  1000:  08 2f        mov r16, r24                   
  1002:  16 2f        mov r17, r22                   
  1004:  80 91 f9 02  lds r24, 0x02f9                ; v_02f9
  1008:  88 23        tst r24                        
  100a:  c9 f1        breq L_107e                    ; -> 0x107e
  100c:  40 91 fc 02  lds r20, 0x02fc                ; v_02fc
  1010:  50 91 fd 02  lds r21, 0x02fd                ; v_02fd
  1014:  60 91 fe 02  lds r22, 0x02fe                ; v_02fe
  1018:  70 91 ff 02  lds r23, 0x02ff                ; v_02ff
  101c:  ce 01        movw r25:r24, r29:r28          
  101e:  01 96        adiw r25:r24, 1                
  1020:  0e 94 d9 03  call F_07b2                    ; -> 0x07b2
  1024:  89 81        ldd r24, Y+1                   
  1026:  9a 81        ldd r25, Y+2                   
  1028:  0e 94 77 03  call F_06ee                    ; -> 0x06ee
  102c:  60 e0        ldi r22, 0x00                  
  102e:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  1032:  0e 94 12 02  call fnA_0424                  ; -> 0x0424
  1036:  80 2f        mov r24, r16                   
  1038:  0e 94 70 03  call F_06e0                    ; -> 0x06e0
  103c:  81 2f        mov r24, r17                   
  103e:  0e 94 70 03  call F_06e0                    ; -> 0x06e0
  1042:  61 e0        ldi r22, 0x01                  
  1044:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  1048:  0e 94 12 02  call fnA_0424                  ; -> 0x0424
L_104c:
  104c:  6a e0        ldi r22, 0x0a                  
  104e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x000a (10)
  1050:  80 e0        ldi r24, 0x00                  
  1052:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1054:  0e 94 83 02  call delay                     ; -> 0x0506
  1058:  46 e0        ldi r20, 0x06                  
  105a:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x0306 (774)
  105c:  61 e0        ldi r22, 0x01                  
  105e:  80 2f        mov r24, r16                   
  1060:  0e 94 f8 03  call F_07f0                    ; -> 0x07f0
  1064:  80 91 06 03  lds r24, 0x0306                ; v_0306
  1068:  18 17        cp r17, r24                    
  106a:  81 f1        breq L_10cc                    ; -> 0x10cc
  106c:  8f ef        ldi r24, 0xff                  
  106e:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
L_1070:
  1070:  0f 90        pop r0                         
  1072:  0f 90        pop r0                         
  1074:  df 91        pop r29                        
  1076:  cf 91        pop r28                        
  1078:  1f 91        pop r17                        
  107a:  0f 91        pop r16                        
  107c:  08 95        ret                            
L_107e:
  107e:  80 91 ee 02  lds r24, 0x02ee                ; v_02ee
  1082:  90 91 ef 02  lds r25, 0x02ef                ; v_02ef
  1086:  20 91 ed 02  lds r18, 0x02ed                ; v_02ed
  108a:  31 e0        ldi r19, 0x01                  
  108c:  30 93 20 02  sts 0x0220, r19                ; v_0220
  1090:  20 93 42 02  sts 0x0242, r18                ; v_0242
  1094:  10 92 21 02  sts 0x0221, r1                 ; v_0221
  1098:  10 92 43 02  sts 0x0243, r1                 ; v_0243
  109c:  dc 01        movw r27:r26, r25:r24          
  109e:  ed 91        ld r30, X+                     
  10a0:  fc 91        ld r31, X                      
  10a2:  01 90        ld r0, Z+                      
  10a4:  f0 81        ld r31, Z                      
  10a6:  e0 2d        mov r30, r0                    
  10a8:  60 2f        mov r22, r16                   
  10aa:  09 95        icall                          
  10ac:  80 91 ee 02  lds r24, 0x02ee                ; v_02ee
  10b0:  90 91 ef 02  lds r25, 0x02ef                ; v_02ef
  10b4:  dc 01        movw r27:r26, r25:r24          
  10b6:  ed 91        ld r30, X+                     
  10b8:  fc 91        ld r31, X                      
  10ba:  01 90        ld r0, Z+                      
  10bc:  f0 81        ld r31, Z                      
  10be:  e0 2d        mov r30, r0                    
  10c0:  61 2f        mov r22, r17                   
  10c2:  09 95        icall                          
  10c4:  81 e0        ldi r24, 0x01                  
  10c6:  0e 94 87 00  call F_010e                    ; -> 0x010e
  10ca:  c0 cf        rjmp L_104c                    ; -> 0x104c
L_10cc:
  10cc:  81 e0        ldi r24, 0x01                  
  10ce:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  10d0:  cf cf        rjmp L_1070                    ; -> 0x1070

; ===== F_10d2 =====
F_10d2:
  10d2:  0f 93        push r16                       
  10d4:  1f 93        push r17                       
  10d6:  cf 93        push r28                       
  10d8:  df 93        push r29                       
  10da:  d8 2f        mov r29, r24                   
  10dc:  c6 2f        mov r28, r22                   
  10de:  8a 01        movw r17:r16, r21:r20          
  10e0:  60 91 7d 04  lds r22, 0x047d                ; v_047d
  10e4:  80 91 6f 04  lds r24, 0x046f                ; v_046f
  10e8:  68 2b        or r22, r24                    
  10ea:  80 91 6a 04  lds r24, 0x046a                ; v_046a
  10ee:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  10f2:  97 fd        sbrc r25, 7                    
  10f4:  25 c0        rjmp L_1140                    ; -> 0x1140
  10f6:  6d 2f        mov r22, r29                   
  10f8:  80 91 6b 04  lds r24, 0x046b                ; v_046b
  10fc:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1100:  97 fd        sbrc r25, 7                    
  1102:  21 c0        rjmp L_1146                    ; -> 0x1146
  1104:  60 91 6e 04  lds r22, 0x046e                ; v_046e
  1108:  6c 2b        or r22, r28                    
  110a:  80 91 6d 04  lds r24, 0x046d                ; v_046d
  110e:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1112:  97 fd        sbrc r25, 7                    
  1114:  1b c0        rjmp L_114c                    ; -> 0x114c
  1116:  61 e0        ldi r22, 0x01                  
  1118:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  111a:  80 e0        ldi r24, 0x00                  
  111c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  111e:  0e 94 83 02  call delay                     ; -> 0x0506
  1122:  a8 01        movw r21:r20, r17:r16          
  1124:  6c 2f        mov r22, r28                   
  1126:  80 91 3f 04  lds r24, 0x043f                ; v_043f
  112a:  0e 94 f8 03  call F_07f0                    ; -> 0x07f0
  112e:  90 93 05 03  sts 0x0305, r25                ; v_0305
  1132:  80 93 04 03  sts 0x0304, r24                ; v_0304
L_1136:
  1136:  df 91        pop r29                        
  1138:  cf 91        pop r28                        
  113a:  1f 91        pop r17                        
  113c:  0f 91        pop r16                        
  113e:  08 95        ret                            
L_1140:
  1140:  8f ef        ldi r24, 0xff                  
  1142:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  1144:  f8 cf        rjmp L_1136                    ; -> 0x1136
L_1146:
  1146:  8e ef        ldi r24, 0xfe                  ; r25:r24 = 0xfffe (65534)
  1148:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffe (65534)
  114a:  f5 cf        rjmp L_1136                    ; -> 0x1136
L_114c:
  114c:  8d ef        ldi r24, 0xfd                  ; r25:r24 = 0xfffd (65533)
  114e:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffd (65533)
  1150:  f2 cf        rjmp L_1136                    ; -> 0x1136

; ===== F_1152 =====
F_1152:
  1152:  cf 93        push r28                       
  1154:  df 93        push r29                       
  1156:  d8 2f        mov r29, r24                   
  1158:  c6 2f        mov r28, r22                   
  115a:  60 91 7d 04  lds r22, 0x047d                ; v_047d
  115e:  80 91 6a 04  lds r24, 0x046a                ; v_046a
  1162:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1166:  97 fd        sbrc r25, 7                    
  1168:  28 c0        rjmp L_11ba                    ; -> 0x11ba
  116a:  6d 2f        mov r22, r29                   
  116c:  80 91 6b 04  lds r24, 0x046b                ; v_046b
  1170:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1174:  97 fd        sbrc r25, 7                    
  1176:  24 c0        rjmp L_11c0                    ; -> 0x11c0
  1178:  6c 2f        mov r22, r28                   
  117a:  80 91 6c 04  lds r24, 0x046c                ; v_046c
  117e:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1182:  97 fd        sbrc r25, 7                    
  1184:  20 c0        rjmp L_11c6                    ; -> 0x11c6
  1186:  60 91 6e 04  lds r22, 0x046e                ; v_046e
  118a:  61 60        ori r22, 0x01                  
  118c:  80 91 6d 04  lds r24, 0x046d                ; v_046d
  1190:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1194:  97 fd        sbrc r25, 7                    
  1196:  1a c0        rjmp L_11cc                    ; -> 0x11cc
  1198:  46 e0        ldi r20, 0x06                  
  119a:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x0306 (774)
  119c:  61 e0        ldi r22, 0x01                  
  119e:  8d 2f        mov r24, r29                   
  11a0:  0e 94 69 08  call F_10d2                    ; -> 0x10d2
  11a4:  97 fd        sbrc r25, 7                    
  11a6:  15 c0        rjmp L_11d2                    ; -> 0x11d2
  11a8:  80 91 06 03  lds r24, 0x0306                ; v_0306
  11ac:  c8 17        cp r28, r24                    
  11ae:  a1 f0        breq L_11d8                    ; -> 0x11d8
  11b0:  8a ef        ldi r24, 0xfa                  
  11b2:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffa (65530)
L_11b4:
  11b4:  df 91        pop r29                        
  11b6:  cf 91        pop r28                        
  11b8:  08 95        ret                            
L_11ba:
  11ba:  8f ef        ldi r24, 0xff                  ; r25:r24 = 0xffff (65535)
  11bc:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  11be:  fa cf        rjmp L_11b4                    ; -> 0x11b4
L_11c0:
  11c0:  8e ef        ldi r24, 0xfe                  ; r25:r24 = 0xfffe (65534)
  11c2:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffe (65534)
  11c4:  f7 cf        rjmp L_11b4                    ; -> 0x11b4
L_11c6:
  11c6:  8d ef        ldi r24, 0xfd                  ; r25:r24 = 0xfffd (65533)
  11c8:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffd (65533)
  11ca:  f4 cf        rjmp L_11b4                    ; -> 0x11b4
L_11cc:
  11cc:  8c ef        ldi r24, 0xfc                  ; r25:r24 = 0xfffc (65532)
  11ce:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffc (65532)
  11d0:  f1 cf        rjmp L_11b4                    ; -> 0x11b4
L_11d2:
  11d2:  8b ef        ldi r24, 0xfb                  ; r25:r24 = 0xfffb (65531)
  11d4:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffb (65531)
  11d6:  ee cf        rjmp L_11b4                    ; -> 0x11b4
L_11d8:
  11d8:  81 e0        ldi r24, 0x01                  ; r25:r24 = 0xff01 (65281)
  11da:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  11dc:  eb cf        rjmp L_11b4                    ; -> 0x11b4

; ===== F_11de =====
F_11de:
  11de:  cf 93        push r28                       
  11e0:  c8 2f        mov r28, r24                   
  11e2:  10 92 fa 02  sts 0x02fa, r1                 ; v_02fa
  11e6:  63 e1        ldi r22, 0x13                  
  11e8:  80 91 58 04  lds r24, 0x0458                ; v_0458
  11ec:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  11f0:  97 fd        sbrc r25, 7                    
  11f2:  45 c0        rjmp L_127e                    ; -> 0x127e
  11f4:  60 91 80 04  lds r22, 0x0480                ; v_0480
  11f8:  80 91 7f 04  lds r24, 0x047f                ; v_047f
  11fc:  ca 30        cpi r28, 0x0a                  
  11fe:  c8 f0        brcs L_1232                    ; -> 0x1232
  1200:  0e 94 a9 08  call F_1152                    ; -> 0x1152
  1204:  97 ff        sbrs r25, 7                    
  1206:  04 c0        rjmp L_1210                    ; -> 0x1210
L_1208:
  1208:  8e ef        ldi r24, 0xfe                  
  120a:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffe (65534)
L_120c:
  120c:  cf 91        pop r28                        
  120e:  08 95        ret                            
L_1210:
  1210:  64 e6        ldi r22, 0x64                  
  1212:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  1214:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0xff00 (65280)
  1216:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1218:  0e 94 83 02  call delay                     ; -> 0x0506
  121c:  60 91 81 04  lds r22, 0x0481                ; v_0481
L_1220:
  1220:  80 91 7f 04  lds r24, 0x047f                ; v_047f
  1224:  0e 94 a9 08  call F_1152                    ; -> 0x1152
  1228:  97 ff        sbrs r25, 7                    
  122a:  10 c0        rjmp L_124c                    ; -> 0x124c
  122c:  8d ef        ldi r24, 0xfd                  
  122e:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffd (65533)
  1230:  ed cf        rjmp L_120c                    ; -> 0x120c
L_1232:
  1232:  0e 94 a9 08  call F_1152                    ; -> 0x1152
  1236:  97 fd        sbrc r25, 7                    
  1238:  e7 cf        rjmp L_1208                    ; -> 0x1208
  123a:  64 e6        ldi r22, 0x64                  
  123c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  123e:  80 e0        ldi r24, 0x00                  
  1240:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1242:  0e 94 83 02  call delay                     ; -> 0x0506
  1246:  60 91 82 04  lds r22, 0x0482                ; v_0482
  124a:  ea cf        rjmp L_1220                    ; -> 0x1220
L_124c:
  124c:  64 e6        ldi r22, 0x64                  
  124e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  1250:  80 e0        ldi r24, 0x00                  
  1252:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1254:  0e 94 83 02  call delay                     ; -> 0x0506
  1258:  46 e0        ldi r20, 0x06                  
  125a:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x0306 (774)
  125c:  67 e0        ldi r22, 0x07                  
  125e:  80 91 7e 04  lds r24, 0x047e                ; v_047e
  1262:  0e 94 69 08  call F_10d2                    ; -> 0x10d2
  1266:  6c 2f        mov r22, r28                   
  1268:  80 91 58 04  lds r24, 0x0458                ; v_0458
  126c:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1270:  97 fd        sbrc r25, 7                    
  1272:  08 c0        rjmp L_1284                    ; -> 0x1284
  1274:  c0 93 7a 03  sts 0x037a, r28                ; v_037a
  1278:  81 e0        ldi r24, 0x01                  
  127a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  127c:  c7 cf        rjmp L_120c                    ; -> 0x120c
L_127e:
  127e:  8f ef        ldi r24, 0xff                  ; r25:r24 = 0x00ff (255)
  1280:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  1282:  c4 cf        rjmp L_120c                    ; -> 0x120c
L_1284:
  1284:  8c ef        ldi r24, 0xfc                  ; r25:r24 = 0xfffc (65532)
  1286:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffc (65532)
  1288:  c1 cf        rjmp L_120c                    ; -> 0x120c

; ===== fnG_128a =====
fnG_128a:
  128a:  4f 92        push r4                        
  128c:  5f 92        push r5                        
  128e:  6f 92        push r6                        
  1290:  7f 92        push r7                        
  1292:  8f 92        push r8                        
  1294:  9f 92        push r9                        
  1296:  af 92        push r10                       
  1298:  bf 92        push r11                       
  129a:  cf 92        push r12                       
  129c:  df 92        push r13                       
  129e:  ef 92        push r14                       
  12a0:  ff 92        push r15                       
  12a2:  0f 93        push r16                       
  12a4:  1f 93        push r17                       
  12a6:  cf 93        push r28                       
  12a8:  6b 01        movw r13:r12, r23:r22          
  12aa:  7c 01        movw r15:r14, r25:r24          
  12ac:  74 2e        mov r7, r20                    
  12ae:  ac 01        movw r21:r20, r25:r24          
  12b0:  9b 01        movw r19:r18, r23:r22          
  12b2:  0e 94 d5 15  call F_2baa                    ; -> 0x2baa
  12b6:  88 23        tst r24                        
  12b8:  99 f0        breq L_12e0                    ; -> 0x12e0
  12ba:  87 e2        ldi r24, 0x27                  
  12bc:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0127 (295)
L_12be:
  12be:  cf 91        pop r28                        
  12c0:  1f 91        pop r17                        
  12c2:  0f 91        pop r16                        
  12c4:  ff 90        pop r15                        
  12c6:  ef 90        pop r14                        
  12c8:  df 90        pop r13                        
  12ca:  cf 90        pop r12                        
  12cc:  bf 90        pop r11                        
  12ce:  af 90        pop r10                        
  12d0:  9f 90        pop r9                         
  12d2:  8f 90        pop r8                         
  12d4:  7f 90        pop r7                         
  12d6:  6f 90        pop r6                         
  12d8:  5f 90        pop r5                         
  12da:  4f 90        pop r4                         
  12dc:  0c 94 7a 03  jmp F_06f4                     ; -> 0x06f4
L_12e0:
  12e0:  46 01        movw r9:r8, r13:r12            
  12e2:  57 01        movw r11:r10, r15:r14          
  12e4:  e8 94        clt                            
  12e6:  b7 f8        bld r11, 7                     
  12e8:  2f ef        ldi r18, 0xff                  
  12ea:  3f ef        ldi r19, 0xff                  ; r19:r18 = 0xffff (65535)
  12ec:  4f e7        ldi r20, 0x7f                  
  12ee:  5f e7        ldi r21, 0x7f                  ; r21:r20 = 0x7f7f (32639)
  12f0:  c5 01        movw r25:r24, r11:r10          
  12f2:  b4 01        movw r23:r22, r9:r8            
  12f4:  0e 94 d5 15  call F_2baa                    ; -> 0x2baa
  12f8:  81 11        cpse r24, r1                   
  12fa:  0d c0        rjmp L_1316                    ; -> 0x1316
  12fc:  2f ef        ldi r18, 0xff                  
  12fe:  3f ef        ldi r19, 0xff                  ; r19:r18 = 0xffff (65535)
  1300:  4f e7        ldi r20, 0x7f                  
  1302:  5f e7        ldi r21, 0x7f                  ; r21:r20 = 0x7f7f (32639)
  1304:  c5 01        movw r25:r24, r11:r10          
  1306:  b4 01        movw r23:r22, r9:r8            
  1308:  0e 94 0b 14  call F_2816                    ; -> 0x2816
  130c:  18 16        cp r1, r24                     
  130e:  1c f4        brge L_1316                    ; -> 0x1316
  1310:  8b e2        ldi r24, 0x2b                  
  1312:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x012b (299)
  1314:  d4 cf        rjmp L_12be                    ; -> 0x12be
L_1316:
  1316:  2f ef        ldi r18, 0xff                  
  1318:  3f ef        ldi r19, 0xff                  ; r19:r18 = 0xffff (65535)
  131a:  4f e7        ldi r20, 0x7f                  
  131c:  5f e4        ldi r21, 0x4f                  ; r21:r20 = 0x4f7f (20351)
  131e:  c7 01        movw r25:r24, r15:r14          
  1320:  b6 01        movw r23:r22, r13:r12          
  1322:  0e 94 63 15  call F_2ac6                    ; -> 0x2ac6
  1326:  18 16        cp r1, r24                     
  1328:  1c f4        brge L_1330                    ; -> 0x1330
L_132a:
  132a:  8f e2        ldi r24, 0x2f                  
  132c:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x012f (303)
  132e:  c7 cf        rjmp L_12be                    ; -> 0x12be
L_1330:
  1330:  2f ef        ldi r18, 0xff                  
  1332:  3f ef        ldi r19, 0xff                  ; r19:r18 = 0xffff (65535)
  1334:  4f e7        ldi r20, 0x7f                  
  1336:  5f ec        ldi r21, 0xcf                  ; r21:r20 = 0xcf7f (53119)
  1338:  c7 01        movw r25:r24, r15:r14          
  133a:  b6 01        movw r23:r22, r13:r12          
  133c:  0e 94 0b 14  call F_2816                    ; -> 0x2816
  1340:  87 fd        sbrc r24, 7                    
  1342:  f3 cf        rjmp L_132a                    ; -> 0x132a
  1344:  20 e0        ldi r18, 0x00                  
  1346:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  1348:  a9 01        movw r21:r20, r19:r18          
  134a:  c7 01        movw r25:r24, r15:r14          
  134c:  b6 01        movw r23:r22, r13:r12          
  134e:  0e 94 0b 14  call F_2816                    ; -> 0x2816
  1352:  10 e0        ldi r17, 0x00                  
  1354:  00 e0        ldi r16, 0x00                  ; r17:r16 = 0x0000 (0)
  1356:  87 ff        sbrs r24, 7                    
  1358:  0a c0        rjmp L_136e                    ; -> 0x136e
  135a:  6d e2        ldi r22, 0x2d                  
  135c:  84 e4        ldi r24, 0x44                  
  135e:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0244 (580)
  1360:  0e 94 a5 01  call F_034a                    ; -> 0x034a
  1364:  8c 01        movw r17:r16, r25:r24          
  1366:  f7 fa        bst r15, 7                     
  1368:  f0 94        com r15                        
  136a:  f7 f8        bld r15, 7                     
  136c:  f0 94        com r15                        
L_136e:
  136e:  c0 e0        ldi r28, 0x00                  
  1370:  60 e0        ldi r22, 0x00                  
  1372:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0000 (0)
  1374:  80 e0        ldi r24, 0x00                  
  1376:  9f e3        ldi r25, 0x3f                  ; r25:r24 = 0x3f00 (16128)
L_1378:
  1378:  7c 16        cp r7, r28                     
  137a:  41 f0        breq L_138c                    ; -> 0x138c
  137c:  20 e0        ldi r18, 0x00                  
  137e:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  1380:  40 e2        ldi r20, 0x20                  
  1382:  51 e4        ldi r21, 0x41                  ; r21:r20 = 0x4120 (16672)
  1384:  0e 94 10 14  call F_2820                    ; -> 0x2820
  1388:  cf 5f        subi r28, 0xff                 
  138a:  f6 cf        rjmp L_1378                    ; -> 0x1378
L_138c:
  138c:  a7 01        movw r21:r20, r15:r14          
  138e:  96 01        movw r19:r18, r13:r12          
  1390:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  1394:  2b 01        movw r5:r4, r23:r22            
  1396:  3c 01        movw r7:r6, r25:r24            
  1398:  0e 94 82 14  call F_2904                    ; -> 0x2904
  139c:  4b 01        movw r9:r8, r23:r22            
  139e:  5c 01        movw r11:r10, r25:r24          
  13a0:  4a e0        ldi r20, 0x0a                  
  13a2:  0e 94 87 03  call F_070e                    ; -> 0x070e
  13a6:  7c 01        movw r15:r14, r25:r24          
  13a8:  e0 0e        add r14, r16                   
  13aa:  f1 1e        adc r15, r17                   
  13ac:  cc 23        tst r28                        
  13ae:  c1 f1        breq L_1420                    ; -> 0x1420
  13b0:  c5 01        movw r25:r24, r11:r10          
  13b2:  b4 01        movw r23:r22, r9:r8            
  13b4:  0e 94 b1 14  call F_2962                    ; -> 0x2962
  13b8:  9b 01        movw r19:r18, r23:r22          
  13ba:  ac 01        movw r21:r20, r25:r24          
  13bc:  c3 01        movw r25:r24, r7:r6            
  13be:  b2 01        movw r23:r22, r5:r4            
  13c0:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  13c4:  4b 01        movw r9:r8, r23:r22            
  13c6:  5c 01        movw r11:r10, r25:r24          
  13c8:  6e e2        ldi r22, 0x2e                  
  13ca:  84 e4        ldi r24, 0x44                  
  13cc:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0244 (580)
  13ce:  0e 94 a5 01  call F_034a                    ; -> 0x034a
  13d2:  e8 0e        add r14, r24                   
  13d4:  f9 1e        adc r15, r25                   
L_13d6:
  13d6:  c1 50        subi r28, 0x01                 
  13d8:  18 f1        brcs L_1420                    ; -> 0x1420
  13da:  20 e0        ldi r18, 0x00                  
  13dc:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  13de:  40 e2        ldi r20, 0x20                  
  13e0:  51 e4        ldi r21, 0x41                  ; r21:r20 = 0x4120 (16672)
  13e2:  c5 01        movw r25:r24, r11:r10          
  13e4:  b4 01        movw r23:r22, r9:r8            
  13e6:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  13ea:  2b 01        movw r5:r4, r23:r22            
  13ec:  3c 01        movw r7:r6, r25:r24            
  13ee:  0e 94 82 14  call F_2904                    ; -> 0x2904
  13f2:  4b 01        movw r9:r8, r23:r22            
  13f4:  b1 2c        mov r11, r1                    
  13f6:  a1 2c        mov r10, r1                    
  13f8:  4a e0        ldi r20, 0x0a                  
  13fa:  c5 01        movw r25:r24, r11:r10          
  13fc:  b4 01        movw r23:r22, r9:r8            
  13fe:  0e 94 87 03  call F_070e                    ; -> 0x070e
  1402:  e8 0e        add r14, r24                   
  1404:  f9 1e        adc r15, r25                   
  1406:  c5 01        movw r25:r24, r11:r10          
  1408:  b4 01        movw r23:r22, r9:r8            
  140a:  0e 94 b1 14  call F_2962                    ; -> 0x2962
  140e:  9b 01        movw r19:r18, r23:r22          
  1410:  ac 01        movw r21:r20, r25:r24          
  1412:  c3 01        movw r25:r24, r7:r6            
  1414:  b2 01        movw r23:r22, r5:r4            
  1416:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  141a:  4b 01        movw r9:r8, r23:r22            
  141c:  5c 01        movw r11:r10, r25:r24          
  141e:  db cf        rjmp L_13d6                    ; -> 0x13d6
L_1420:
  1420:  c7 01        movw r25:r24, r15:r14          
  1422:  cf 91        pop r28                        
  1424:  1f 91        pop r17                        
  1426:  0f 91        pop r16                        
  1428:  ff 90        pop r15                        
  142a:  ef 90        pop r14                        
  142c:  df 90        pop r13                        
  142e:  cf 90        pop r12                        
  1430:  bf 90        pop r11                        
  1432:  af 90        pop r10                        
  1434:  9f 90        pop r9                         
  1436:  8f 90        pop r8                         
  1438:  7f 90        pop r7                         
  143a:  6f 90        pop r6                         
  143c:  5f 90        pop r5                         
  143e:  4f 90        pop r4                         
  1440:  08 95        ret                            
  1442:  1f 92        push r1                        
  1444:  0f 92        push r0                        
  1446:  0f b6        in r0, 0x3f                    ; SREG
  1448:  0f 92        push r0                        
  144a:  11 24        clr r1                         
  144c:  2f 93        push r18                       
  144e:  3f 93        push r19                       
  1450:  4f 93        push r20                       
  1452:  5f 93        push r21                       
  1454:  6f 93        push r22                       
  1456:  7f 93        push r23                       
  1458:  8f 93        push r24                       
  145a:  9f 93        push r25                       
  145c:  af 93        push r26                       
  145e:  bf 93        push r27                       
  1460:  ef 93        push r30                       
  1462:  ff 93        push r31                       
  1464:  84 e4        ldi r24, 0x44                  
  1466:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0244 (580)
  1468:  0e 94 83 01  call F_0306                    ; -> 0x0306
  146c:  ff 91        pop r31                        
  146e:  ef 91        pop r30                        
  1470:  bf 91        pop r27                        
  1472:  af 91        pop r26                        
  1474:  9f 91        pop r25                        
  1476:  8f 91        pop r24                        
  1478:  7f 91        pop r23                        
  147a:  6f 91        pop r22                        
  147c:  5f 91        pop r21                        
  147e:  4f 91        pop r20                        
  1480:  3f 91        pop r19                        
  1482:  2f 91        pop r18                        
  1484:  0f 90        pop r0                         
  1486:  0f be        out 0x3f, r0                   ; SREG
  1488:  0f 90        pop r0                         
  148a:  1f 90        pop r1                         
  148c:  18 95        reti                           
  148e:  1f 92        push r1                        
  1490:  0f 92        push r0                        
  1492:  0f b6        in r0, 0x3f                    ; SREG
  1494:  0f 92        push r0                        
  1496:  11 24        clr r1                         
  1498:  2f 93        push r18                       
  149a:  8f 93        push r24                       
  149c:  9f 93        push r25                       
  149e:  ef 93        push r30                       
  14a0:  ff 93        push r31                       
  14a2:  e0 91 54 02  lds r30, 0x0254                ; v_0254
  14a6:  f0 91 55 02  lds r31, 0x0255                ; v_0255
  14aa:  80 81        ld r24, Z                      
  14ac:  e0 91 5a 02  lds r30, 0x025a                ; v_025a
  14b0:  f0 91 5b 02  lds r31, 0x025b                ; v_025b
  14b4:  82 fd        sbrc r24, 2                    
  14b6:  1b c0        rjmp L_14ee                    ; -> 0x14ee
  14b8:  90 81        ld r25, Z                      
  14ba:  80 91 5d 02  lds r24, 0x025d                ; v_025d
  14be:  8f 5f        subi r24, 0xff                 
  14c0:  8f 73        andi r24, 0x3f                 
  14c2:  20 91 5e 02  lds r18, 0x025e                ; v_025e
  14c6:  82 17        cp r24, r18                    
  14c8:  41 f0        breq L_14da                    ; -> 0x14da
  14ca:  e0 91 5d 02  lds r30, 0x025d                ; v_025d
  14ce:  f0 e0        ldi r31, 0x00                  
  14d0:  ec 5b        subi r30, 0xbc                 
  14d2:  fd 4f        sbci r31, 0xfd                 
  14d4:  95 8f        std Z+29, r25                  
  14d6:  80 93 5d 02  sts 0x025d, r24                ; v_025d
L_14da:
  14da:  ff 91        pop r31                        
  14dc:  ef 91        pop r30                        
  14de:  9f 91        pop r25                        
  14e0:  8f 91        pop r24                        
  14e2:  2f 91        pop r18                        
  14e4:  0f 90        pop r0                         
  14e6:  0f be        out 0x3f, r0                   ; SREG
  14e8:  0f 90        pop r0                         
  14ea:  1f 90        pop r1                         
  14ec:  18 95        reti                           
L_14ee:
  14ee:  80 81        ld r24, Z                      
  14f0:  f4 cf        rjmp L_14da                    ; -> 0x14da
  14f2:  1f 92        push r1                        
  14f4:  0f 92        push r0                        
  14f6:  0f b6        in r0, 0x3f                    ; SREG
  14f8:  0f 92        push r0                        
  14fa:  11 24        clr r1                         
  14fc:  2f 93        push r18                       
  14fe:  3f 93        push r19                       
  1500:  8f 93        push r24                       
  1502:  9f 93        push r25                       
  1504:  af 93        push r26                       
  1506:  bf 93        push r27                       
  1508:  80 91 c8 01  lds r24, 0x01c8                ; v_01c8
  150c:  90 91 c9 01  lds r25, 0x01c9                ; v_01c9
  1510:  a0 91 ca 01  lds r26, 0x01ca                ; v_01ca
  1514:  b0 91 cb 01  lds r27, 0x01cb                ; v_01cb
  1518:  30 91 c7 01  lds r19, 0x01c7                ; v_01c7
  151c:  23 e0        ldi r18, 0x03                  
  151e:  23 0f        add r18, r19                   
  1520:  2d 37        cpi r18, 0x7d                  
  1522:  58 f5        brcc L_157a                    ; -> 0x157a
  1524:  01 96        adiw r25:r24, 1                
  1526:  a1 1d        adc r26, r1                    
  1528:  b1 1d        adc r27, r1                    
L_152a:
  152a:  20 93 c7 01  sts 0x01c7, r18                ; v_01c7
  152e:  80 93 c8 01  sts 0x01c8, r24                ; v_01c8
  1532:  90 93 c9 01  sts 0x01c9, r25                ; v_01c9
  1536:  a0 93 ca 01  sts 0x01ca, r26                ; v_01ca
  153a:  b0 93 cb 01  sts 0x01cb, r27                ; v_01cb
  153e:  80 91 cc 01  lds r24, 0x01cc                ; v_01cc
  1542:  90 91 cd 01  lds r25, 0x01cd                ; v_01cd
  1546:  a0 91 ce 01  lds r26, 0x01ce                ; v_01ce
  154a:  b0 91 cf 01  lds r27, 0x01cf                ; v_01cf
  154e:  01 96        adiw r25:r24, 1                
  1550:  a1 1d        adc r26, r1                    
  1552:  b1 1d        adc r27, r1                    
  1554:  80 93 cc 01  sts 0x01cc, r24                ; v_01cc
  1558:  90 93 cd 01  sts 0x01cd, r25                ; v_01cd
  155c:  a0 93 ce 01  sts 0x01ce, r26                ; v_01ce
  1560:  b0 93 cf 01  sts 0x01cf, r27                ; v_01cf
  1564:  bf 91        pop r27                        
  1566:  af 91        pop r26                        
  1568:  9f 91        pop r25                        
  156a:  8f 91        pop r24                        
  156c:  3f 91        pop r19                        
  156e:  2f 91        pop r18                        
  1570:  0f 90        pop r0                         
  1572:  0f be        out 0x3f, r0                   ; SREG
  1574:  0f 90        pop r0                         
  1576:  1f 90        pop r1                         
  1578:  18 95        reti                           
L_157a:
  157a:  26 e8        ldi r18, 0x86                  
  157c:  23 0f        add r18, r19                   
  157e:  02 96        adiw r25:r24, 2                
  1580:  a1 1d        adc r26, r1                    
  1582:  b1 1d        adc r27, r1                    
  1584:  d2 cf        rjmp L_152a                    ; -> 0x152a
  1586:  1f 92        push r1                        
  1588:  0f 92        push r0                        
  158a:  0f b6        in r0, 0x3f                    ; SREG
  158c:  0f 92        push r0                        
  158e:  11 24        clr r1                         
  1590:  2f 93        push r18                       
  1592:  3f 93        push r19                       
  1594:  4f 93        push r20                       
  1596:  5f 93        push r21                       
  1598:  6f 93        push r22                       
  159a:  7f 93        push r23                       
  159c:  8f 93        push r24                       
  159e:  9f 93        push r25                       
  15a0:  af 93        push r26                       
  15a2:  bf 93        push r27                       
  15a4:  ef 93        push r30                       
  15a6:  ff 93        push r31                       
  15a8:  80 91 b9 00  lds r24, 0x00b9                ; TWSR
  15ac:  88 7f        andi r24, 0xf8                 
  15ae:  80 36        cpi r24, 0x60                  
  15b0:  09 f4        brne L_15b4                    ; -> 0x15b4
  15b2:  4a c0        rjmp L_1648                    ; -> 0x1648
L_15b4:
  15b4:  f0 f5        brcc L_1632                    ; -> 0x1632
  15b6:  88 32        cpi r24, 0x28                  
  15b8:  09 f4        brne L_15bc                    ; -> 0x15bc
  15ba:  a7 c0        rjmp L_170a                    ; -> 0x170a
L_15bc:
  15bc:  18 f5        brcc L_1604                    ; -> 0x1604
  15be:  80 31        cpi r24, 0x10                  
  15c0:  09 f4        brne L_15c4                    ; -> 0x15c4
  15c2:  9b c0        rjmp L_16fa                    ; -> 0x16fa
L_15c4:
  15c4:  b8 f4        brcc L_15f4                    ; -> 0x15f4
  15c6:  88 23        tst r24                        
  15c8:  09 f4        brne L_15cc                    ; -> 0x15cc
  15ca:  f9 c0        rjmp L_17be                    ; -> 0x17be
L_15cc:
  15cc:  88 30        cpi r24, 0x08                  
  15ce:  09 f4        brne L_15d2                    ; -> 0x15d2
  15d0:  94 c0        rjmp L_16fa                    ; -> 0x16fa
L_15d2:
  15d2:  ff 91        pop r31                        
  15d4:  ef 91        pop r30                        
  15d6:  bf 91        pop r27                        
  15d8:  af 91        pop r26                        
  15da:  9f 91        pop r25                        
  15dc:  8f 91        pop r24                        
  15de:  7f 91        pop r23                        
  15e0:  6f 91        pop r22                        
  15e2:  5f 91        pop r21                        
  15e4:  4f 91        pop r20                        
  15e6:  3f 91        pop r19                        
  15e8:  2f 91        pop r18                        
  15ea:  0f 90        pop r0                         
  15ec:  0f be        out 0x3f, r0                   ; SREG
  15ee:  0f 90        pop r0                         
  15f0:  1f 90        pop r1                         
  15f2:  18 95        reti                           
L_15f4:
  15f4:  88 31        cpi r24, 0x18                  
  15f6:  09 f4        brne L_15fa                    ; -> 0x15fa
  15f8:  88 c0        rjmp L_170a                    ; -> 0x170a
L_15fa:
  15fa:  80 32        cpi r24, 0x20                  
  15fc:  51 f7        brne L_15d2                    ; -> 0x15d2
L_15fe:
  15fe:  80 93 1d 02  sts 0x021d, r24                ; v_021d
  1602:  14 c0        rjmp L_162c                    ; -> 0x162c
L_1604:
  1604:  80 34        cpi r24, 0x40                  
  1606:  09 f4        brne L_160a                    ; -> 0x160a
  1608:  9d c0        rjmp L_1744                    ; -> 0x1744
L_160a:
  160a:  40 f4        brcc L_161c                    ; -> 0x161c
  160c:  80 33        cpi r24, 0x30                  
  160e:  b9 f3        breq L_15fe                    ; -> 0x15fe
  1610:  88 33        cpi r24, 0x38                  
  1612:  f9 f6        brne L_15d2                    ; -> 0x15d2
  1614:  80 93 1d 02  sts 0x021d, r24                ; v_021d
L_1618:
  1618:  85 ec        ldi r24, 0xc5                  
  161a:  b0 c0        rjmp L_177c                    ; -> 0x177c
L_161c:
  161c:  80 35        cpi r24, 0x50                  
  161e:  09 f4        brne L_1622                    ; -> 0x1622
  1620:  85 c0        rjmp L_172c                    ; -> 0x172c
L_1622:
  1622:  88 35        cpi r24, 0x58                  
  1624:  09 f4        brne L_1628                    ; -> 0x1628
  1626:  96 c0        rjmp L_1754                    ; -> 0x1754
L_1628:
  1628:  88 34        cpi r24, 0x48                  
  162a:  99 f6        brne L_15d2                    ; -> 0x15d2
L_162c:
  162c:  0e 94 b5 02  call fnC_056a                  ; -> 0x056a
  1630:  d0 cf        rjmp L_15d2                    ; -> 0x15d2
L_1632:
  1632:  88 39        cpi r24, 0x98                  
  1634:  09 f4        brne L_1638                    ; -> 0x1638
  1636:  8c c0        rjmp L_1750                    ; -> 0x1750
L_1638:
  1638:  38 f5        brcc L_1688                    ; -> 0x1688
  163a:  88 37        cpi r24, 0x78                  
  163c:  29 f0        breq L_1648                    ; -> 0x1648
  163e:  50 f4        brcc L_1654                    ; -> 0x1654
  1640:  88 36        cpi r24, 0x68                  
  1642:  11 f0        breq L_1648                    ; -> 0x1648
  1644:  80 37        cpi r24, 0x70                  
  1646:  29 f6        brne L_15d2                    ; -> 0x15d2
L_1648:
  1648:  83 e0        ldi r24, 0x03                  
  164a:  80 93 1f 02  sts 0x021f, r24                ; v_021f
  164e:  10 92 c6 01  sts 0x01c6, r1                 ; v_01c6
  1652:  57 c0        rjmp L_1702                    ; -> 0x1702
L_1654:
  1654:  88 38        cpi r24, 0x88                  
  1656:  09 f4        brne L_165a                    ; -> 0x165a
  1658:  7b c0        rjmp L_1750                    ; -> 0x1750
L_165a:
  165a:  80 39        cpi r24, 0x90                  
  165c:  19 f0        breq L_1664                    ; -> 0x1664
  165e:  80 38        cpi r24, 0x80                  
  1660:  09 f0        breq L_1664                    ; -> 0x1664
  1662:  b7 cf        rjmp L_15d2                    ; -> 0x15d2
L_1664:
  1664:  80 91 c6 01  lds r24, 0x01c6                ; v_01c6
  1668:  80 32        cpi r24, 0x20                  
  166a:  08 f0        brcs L_166e                    ; -> 0x166e
  166c:  71 c0        rjmp L_1750                    ; -> 0x1750
L_166e:
  166e:  e0 91 c6 01  lds r30, 0x01c6                ; v_01c6
  1672:  81 e0        ldi r24, 0x01                  
  1674:  8e 0f        add r24, r30                   
  1676:  80 93 c6 01  sts 0x01c6, r24                ; v_01c6
  167a:  80 91 bb 00  lds r24, 0x00bb                ; TWDR
  167e:  f0 e0        ldi r31, 0x00                  
  1680:  ea 55        subi r30, 0x5a                 
  1682:  fe 4f        sbci r31, 0xfe                 
  1684:  80 83        st Z, r24                      
  1686:  3d c0        rjmp L_1702                    ; -> 0x1702
L_1688:
  1688:  80 3b        cpi r24, 0xb0                  
  168a:  39 f0        breq L_169a                    ; -> 0x169a
  168c:  e0 f4        brcc L_16c6                    ; -> 0x16c6
  168e:  80 3a        cpi r24, 0xa0                  
  1690:  09 f4        brne L_1694                    ; -> 0x1694
  1692:  79 c0        rjmp L_1786                    ; -> 0x1786
L_1694:
  1694:  88 3a        cpi r24, 0xa8                  
  1696:  09 f0        breq L_169a                    ; -> 0x169a
  1698:  9c cf        rjmp L_15d2                    ; -> 0x15d2
L_169a:
  169a:  84 e0        ldi r24, 0x04                  
  169c:  80 93 1f 02  sts 0x021f, r24                ; v_021f
  16a0:  10 92 a5 01  sts 0x01a5, r1                 ; v_01a5
  16a4:  10 92 a4 01  sts 0x01a4, r1                 ; v_01a4
  16a8:  e0 91 d2 01  lds r30, 0x01d2                ; v_01d2
  16ac:  f0 91 d3 01  lds r31, 0x01d3                ; v_01d3
  16b0:  09 95        icall                          
  16b2:  80 91 a4 01  lds r24, 0x01a4                ; v_01a4
  16b6:  81 11        cpse r24, r1                   
  16b8:  0f c0        rjmp L_16d8                    ; -> 0x16d8
  16ba:  81 e0        ldi r24, 0x01                  
  16bc:  80 93 a4 01  sts 0x01a4, r24                ; v_01a4
  16c0:  10 92 84 01  sts 0x0184, r1                 ; v_0184
  16c4:  09 c0        rjmp L_16d8                    ; -> 0x16d8
L_16c6:
  16c6:  80 3c        cpi r24, 0xc0                  
  16c8:  09 f4        brne L_16cc                    ; -> 0x16cc
  16ca:  a6 cf        rjmp L_1618                    ; -> 0x1618
L_16cc:
  16cc:  88 3c        cpi r24, 0xc8                  
  16ce:  09 f4        brne L_16d2                    ; -> 0x16d2
  16d0:  a3 cf        rjmp L_1618                    ; -> 0x1618
L_16d2:
  16d2:  88 3b        cpi r24, 0xb8                  
  16d4:  09 f0        breq L_16d8                    ; -> 0x16d8
  16d6:  7d cf        rjmp L_15d2                    ; -> 0x15d2
L_16d8:
  16d8:  e0 91 a5 01  lds r30, 0x01a5                ; v_01a5
  16dc:  81 e0        ldi r24, 0x01                  
  16de:  8e 0f        add r24, r30                   
  16e0:  80 93 a5 01  sts 0x01a5, r24                ; v_01a5
  16e4:  f0 e0        ldi r31, 0x00                  
  16e6:  ec 57        subi r30, 0x7c                 
  16e8:  fe 4f        sbci r31, 0xfe                 
  16ea:  80 81        ld r24, Z                      
  16ec:  80 93 bb 00  sts 0x00bb, r24                ; TWDR
  16f0:  90 91 a5 01  lds r25, 0x01a5                ; v_01a5
  16f4:  80 91 a4 01  lds r24, 0x01a4                ; v_01a4
  16f8:  29 c0        rjmp L_174c                    ; -> 0x174c
L_16fa:
  16fa:  80 91 fa 01  lds r24, 0x01fa                ; v_01fa
L_16fe:
  16fe:  80 93 bb 00  sts 0x00bb, r24                ; TWDR
L_1702:
  1702:  85 ec        ldi r24, 0xc5                  
L_1704:
  1704:  80 93 bc 00  sts 0x00bc, r24                ; TWCR
  1708:  64 cf        rjmp L_15d2                    ; -> 0x15d2
L_170a:
  170a:  90 91 1c 02  lds r25, 0x021c                ; v_021c
  170e:  80 91 1b 02  lds r24, 0x021b                ; v_021b
  1712:  98 17        cp r25, r24                    
  1714:  58 f5        brcc L_176c                    ; -> 0x176c
  1716:  e0 91 1c 02  lds r30, 0x021c                ; v_021c
  171a:  81 e0        ldi r24, 0x01                  
  171c:  8e 0f        add r24, r30                   
  171e:  80 93 1c 02  sts 0x021c, r24                ; v_021c
  1722:  f0 e0        ldi r31, 0x00                  
  1724:  e5 50        subi r30, 0x05                 
  1726:  fe 4f        sbci r31, 0xfe                 
  1728:  80 81        ld r24, Z                      
  172a:  e9 cf        rjmp L_16fe                    ; -> 0x16fe
L_172c:
  172c:  e0 91 1c 02  lds r30, 0x021c                ; v_021c
  1730:  81 e0        ldi r24, 0x01                  
  1732:  8e 0f        add r24, r30                   
  1734:  80 93 1c 02  sts 0x021c, r24                ; v_021c
  1738:  80 91 bb 00  lds r24, 0x00bb                ; TWDR
  173c:  f0 e0        ldi r31, 0x00                  
  173e:  e5 50        subi r30, 0x05                 
  1740:  fe 4f        sbci r31, 0xfe                 
  1742:  80 83        st Z, r24                      
L_1744:
  1744:  90 91 1c 02  lds r25, 0x021c                ; v_021c
  1748:  80 91 1b 02  lds r24, 0x021b                ; v_021b
L_174c:
  174c:  98 17        cp r25, r24                    
  174e:  c8 f2        brcs L_1702                    ; -> 0x1702
L_1750:
  1750:  85 e8        ldi r24, 0x85                  
  1752:  d8 cf        rjmp L_1704                    ; -> 0x1704
L_1754:
  1754:  e0 91 1c 02  lds r30, 0x021c                ; v_021c
  1758:  81 e0        ldi r24, 0x01                  
  175a:  8e 0f        add r24, r30                   
  175c:  80 93 1c 02  sts 0x021c, r24                ; v_021c
  1760:  80 91 bb 00  lds r24, 0x00bb                ; TWDR
  1764:  f0 e0        ldi r31, 0x00                  
  1766:  e5 50        subi r30, 0x05                 
  1768:  fe 4f        sbci r31, 0xfe                 
  176a:  80 83        st Z, r24                      
L_176c:
  176c:  80 91 1e 02  lds r24, 0x021e                ; v_021e
  1770:  81 11        cpse r24, r1                   
  1772:  5c cf        rjmp L_162c                    ; -> 0x162c
  1774:  81 e0        ldi r24, 0x01                  
  1776:  80 93 f9 01  sts 0x01f9, r24                ; v_01f9
  177a:  84 ea        ldi r24, 0xa4                  
L_177c:
  177c:  80 93 bc 00  sts 0x00bc, r24                ; TWCR
  1780:  10 92 1f 02  sts 0x021f, r1                 ; v_021f
  1784:  26 cf        rjmp L_15d2                    ; -> 0x15d2
L_1786:
  1786:  85 ec        ldi r24, 0xc5                  
  1788:  80 93 bc 00  sts 0x00bc, r24                ; TWCR
  178c:  10 92 1f 02  sts 0x021f, r1                 ; v_021f
  1790:  80 91 c6 01  lds r24, 0x01c6                ; v_01c6
  1794:  80 32        cpi r24, 0x20                  
  1796:  30 f4        brcc L_17a4                    ; -> 0x17a4
  1798:  e0 91 c6 01  lds r30, 0x01c6                ; v_01c6
  179c:  f0 e0        ldi r31, 0x00                  
  179e:  ea 55        subi r30, 0x5a                 
  17a0:  fe 4f        sbci r31, 0xfe                 
  17a2:  10 82        st Z, r1                       
L_17a4:
  17a4:  60 91 c6 01  lds r22, 0x01c6                ; v_01c6
  17a8:  70 e0        ldi r23, 0x00                  
  17aa:  e0 91 d0 01  lds r30, 0x01d0                ; v_01d0
  17ae:  f0 91 d1 01  lds r31, 0x01d1                ; v_01d1
  17b2:  86 ea        ldi r24, 0xa6                  
  17b4:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x01a6 (422)
  17b6:  09 95        icall                          
  17b8:  10 92 c6 01  sts 0x01c6, r1                 ; v_01c6
  17bc:  0a cf        rjmp L_15d2                    ; -> 0x15d2
L_17be:
  17be:  10 92 1d 02  sts 0x021d, r1                 ; v_021d
  17c2:  34 cf        rjmp L_162c                    ; -> 0x162c
  17c4:  0f 93        push r16                       
  17c6:  1f 93        push r17                       
  17c8:  cf 93        push r28                       
  17ca:  df 93        push r29                       
  17cc:  e4 e4        ldi r30, 0x44                  
  17ce:  f2 e0        ldi r31, 0x02                  ; r31:r30 = 0x0244 (580)
  17d0:  13 82        std Z+3, r1                    
  17d2:  12 82        std Z+2, r1                    
  17d4:  48 ee        ldi r20, 0xe8                  
  17d6:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x03e8 (1000)
  17d8:  60 e0        ldi r22, 0x00                  
  17da:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0000 (0)
  17dc:  44 83        std Z+4, r20                   
  17de:  55 83        std Z+5, r21                   
  17e0:  66 83        std Z+6, r22                   
  17e2:  77 83        std Z+7, r23                   
  17e4:  84 e0        ldi r24, 0x04                  
  17e6:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0104 (260)
  17e8:  91 83        std Z+1, r25                   
  17ea:  80 83        st Z, r24                      
  17ec:  85 ec        ldi r24, 0xc5                  ; r25:r24 = 0x01c5 (453)
  17ee:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x00c5 (197)
  17f0:  95 87        std Z+13, r25                  
  17f2:  84 87        std Z+12, r24                  
  17f4:  84 ec        ldi r24, 0xc4                  ; r25:r24 = 0x00c4 (196)
  17f6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x00c4 (196)
  17f8:  97 87        std Z+15, r25                  
  17fa:  86 87        std Z+14, r24                  
  17fc:  80 ec        ldi r24, 0xc0                  ; r25:r24 = 0x00c0 (192)
  17fe:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x00c0 (192)
  1800:  91 8b        std Z+17, r25                  
  1802:  80 8b        std Z+16, r24                  
  1804:  81 ec        ldi r24, 0xc1                  ; r25:r24 = 0x00c1 (193)
  1806:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x00c1 (193)
  1808:  93 8b        std Z+19, r25                  
  180a:  82 8b        std Z+18, r24                  
  180c:  82 ec        ldi r24, 0xc2                  ; r25:r24 = 0x00c2 (194)
  180e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x00c2 (194)
  1810:  95 8b        std Z+21, r25                  
  1812:  84 8b        std Z+20, r24                  
  1814:  86 ec        ldi r24, 0xc6                  ; r25:r24 = 0x00c6 (198)
  1816:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x00c6 (198)
  1818:  97 8b        std Z+23, r25                  
  181a:  86 8b        std Z+22, r24                  
  181c:  11 8e        std Z+25, r1                   
  181e:  12 8e        std Z+26, r1                   
  1820:  13 8e        std Z+27, r1                   
  1822:  14 8e        std Z+28, r1                   
  1824:  a1 ee        ldi r26, 0xe1                  
  1826:  b2 e0        ldi r27, 0x02                  ; r27:r26 = 0x02e1 (737)
  1828:  13 96        adiw r27:r26, 3                
  182a:  1c 92        st X, r1                       
  182c:  1e 92        st -X, r1                      
  182e:  12 97        sbiw r27:r26, 2                
  1830:  14 96        adiw r27:r26, 4                
  1832:  4d 93        st X+, r20                     
  1834:  5d 93        st X+, r21                     
  1836:  6d 93        st X+, r22                     
  1838:  7c 93        st X, r23                      
  183a:  17 97        sbiw r27:r26, 7                
  183c:  86 e1        ldi r24, 0x16                  
  183e:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0116 (278)
  1840:  11 96        adiw r27:r26, 1                
  1842:  9c 93        st X, r25                      
  1844:  8e 93        st -X, r24                     
  1846:  ed ee        ldi r30, 0xed                  
  1848:  f2 e0        ldi r31, 0x02                  ; r31:r30 = 0x02ed (749)
  184a:  40 e8        ldi r20, 0x80                  
  184c:  5a e1        ldi r21, 0x1a                  ; r21:r20 = 0x1a80 (6784)
  184e:  66 e0        ldi r22, 0x06                  
  1850:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1852:  43 83        std Z+3, r20                   
  1854:  54 83        std Z+4, r21                   
  1856:  65 83        std Z+5, r22                   
  1858:  76 83        std Z+6, r23                   
  185a:  90 e8        ldi r25, 0x80                  
  185c:  96 87        std Z+14, r25                  
  185e:  40 e4        ldi r20, 0x40                  
  1860:  52 e4        ldi r21, 0x42                  ; r21:r20 = 0x4240 (16960)
  1862:  6f e0        ldi r22, 0x0f                  
  1864:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x000f (15)
  1866:  47 87        std Z+15, r20                  
  1868:  50 8b        std Z+16, r21                  
  186a:  61 8b        std Z+17, r22                  
  186c:  72 8b        std Z+18, r23                  
  186e:  40 ec        ldi r20, 0xc0                  
  1870:  51 ee        ldi r21, 0xe1                  ; r21:r20 = 0xe1c0 (57792)
  1872:  64 ee        ldi r22, 0xe4                  
  1874:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x00e4 (228)
  1876:  43 8b        std Z+19, r20                  
  1878:  54 8b        std Z+20, r21                  
  187a:  65 8b        std Z+21, r22                  
  187c:  76 8b        std Z+22, r23                  
  187e:  4c e5        ldi r20, 0x5c                  
  1880:  5f ee        ldi r21, 0xef                  ; r21:r20 = 0xef5c (61276)
  1882:  66 ea        ldi r22, 0xa6                  
  1884:  73 e4        ldi r23, 0x43                  ; r23:r22 = 0x43a6 (17318)
  1886:  40 93 6c 03  sts 0x036c, r20                ; v_036c
  188a:  50 93 6d 03  sts 0x036d, r21                ; v_036d
  188e:  60 93 6e 03  sts 0x036e, r22                ; v_036e
  1892:  70 93 6f 03  sts 0x036f, r23                ; v_036f
  1896:  40 e0        ldi r20, 0x00                  
  1898:  50 e0        ldi r21, 0x00                  ; r21:r20 = 0x0000 (0)
  189a:  68 ea        ldi r22, 0xa8                  
  189c:  71 e4        ldi r23, 0x41                  ; r23:r22 = 0x41a8 (16808)
  189e:  40 93 70 03  sts 0x0370, r20                ; v_0370
  18a2:  50 93 71 03  sts 0x0371, r21                ; v_0371
  18a6:  60 93 72 03  sts 0x0372, r22                ; v_0372
  18aa:  70 93 73 03  sts 0x0373, r23                ; v_0373
  18ae:  24 e6        ldi r18, 0x64                  
  18b0:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0064 (100)
  18b2:  30 93 7c 03  sts 0x037c, r19                ; v_037c
  18b6:  20 93 7b 03  sts 0x037b, r18                ; v_037b
  18ba:  40 e0        ldi r20, 0x00                  
  18bc:  50 e0        ldi r21, 0x00                  ; r21:r20 = 0x0000 (0)
  18be:  60 e8        ldi r22, 0x80                  
  18c0:  7f e3        ldi r23, 0x3f                  ; r23:r22 = 0x3f80 (16256)
  18c2:  40 93 c5 03  sts 0x03c5, r20                ; v_03c5
  18c6:  50 93 c6 03  sts 0x03c6, r21                ; v_03c6
  18ca:  60 93 c7 03  sts 0x03c7, r22                ; v_03c7
  18ce:  70 93 c8 03  sts 0x03c8, r23                ; v_03c8
  18d2:  40 93 c9 03  sts 0x03c9, r20                ; v_03c9
  18d6:  50 93 ca 03  sts 0x03ca, r21                ; v_03ca
  18da:  60 93 cb 03  sts 0x03cb, r22                ; v_03cb
  18de:  70 93 cc 03  sts 0x03cc, r23                ; v_03cc
  18e2:  40 93 cd 03  sts 0x03cd, r20                ; v_03cd
  18e6:  50 93 ce 03  sts 0x03ce, r21                ; v_03ce
  18ea:  60 93 cf 03  sts 0x03cf, r22                ; v_03cf
  18ee:  70 93 d0 03  sts 0x03d0, r23                ; v_03d0
  18f2:  28 ee        ldi r18, 0xe8                  
  18f4:  33 e0        ldi r19, 0x03                  ; r19:r18 = 0x03e8 (1000)
  18f6:  30 93 d2 03  sts 0x03d2, r19                ; v_03d2
  18fa:  20 93 d1 03  sts 0x03d1, r18                ; v_03d1
  18fe:  0a e9        ldi r16, 0x9a                  
  1900:  19 e9        ldi r17, 0x99                  ; r17:r16 = 0x999a (39322)
  1902:  29 e9        ldi r18, 0x99                  
  1904:  3e e3        ldi r19, 0x3e                  ; r19:r18 = 0x3e99 (16025)
  1906:  00 93 d3 03  sts 0x03d3, r16                ; v_03d3
  190a:  10 93 d4 03  sts 0x03d4, r17                ; v_03d4
  190e:  20 93 d5 03  sts 0x03d5, r18                ; v_03d5
  1912:  30 93 d6 03  sts 0x03d6, r19                ; v_03d6
  1916:  28 e0        ldi r18, 0x08                  
  1918:  20 93 d7 03  sts 0x03d7, r18                ; v_03d7
  191c:  40 93 12 04  sts 0x0412, r20                ; v_0412
  1920:  50 93 13 04  sts 0x0413, r21                ; v_0413
  1924:  60 93 14 04  sts 0x0414, r22                ; v_0414
  1928:  70 93 15 04  sts 0x0415, r23                ; v_0415
  192c:  40 93 16 04  sts 0x0416, r20                ; v_0416
  1930:  50 93 17 04  sts 0x0417, r21                ; v_0417
  1934:  60 93 18 04  sts 0x0418, r22                ; v_0418
  1938:  70 93 19 04  sts 0x0419, r23                ; v_0419
  193c:  40 93 1a 04  sts 0x041a, r20                ; v_041a
  1940:  50 93 1b 04  sts 0x041b, r21                ; v_041b
  1944:  60 93 1c 04  sts 0x041c, r22                ; v_041c
  1948:  70 93 1d 04  sts 0x041d, r23                ; v_041d
  194c:  10 92 23 04  sts 0x0423, r1                 ; v_0423
  1950:  10 92 22 04  sts 0x0422, r1                 ; v_0422
  1954:  41 e0        ldi r20, 0x01                  
  1956:  50 e0        ldi r21, 0x00                  ; r21:r20 = 0x0001 (1)
  1958:  50 93 25 04  sts 0x0425, r21                ; v_0425
  195c:  40 93 24 04  sts 0x0424, r20                ; v_0424
  1960:  10 92 27 04  sts 0x0427, r1                 ; v_0427
  1964:  10 92 26 04  sts 0x0426, r1                 ; v_0426
  1968:  50 93 29 04  sts 0x0429, r21                ; v_0429
  196c:  40 93 28 04  sts 0x0428, r20                ; v_0428
  1970:  10 92 2b 04  sts 0x042b, r1                 ; v_042b
  1974:  10 92 2a 04  sts 0x042a, r1                 ; v_042a
  1978:  10 92 2d 04  sts 0x042d, r1                 ; v_042d
  197c:  10 92 2c 04  sts 0x042c, r1                 ; v_042c
  1980:  10 92 2f 04  sts 0x042f, r1                 ; v_042f
  1984:  10 92 2e 04  sts 0x042e, r1                 ; v_042e
  1988:  10 92 31 04  sts 0x0431, r1                 ; v_0431
  198c:  10 92 30 04  sts 0x0430, r1                 ; v_0430
  1990:  4f ef        ldi r20, 0xff                  
  1992:  5f ef        ldi r21, 0xff                  ; r21:r20 = 0xffff (65535)
  1994:  50 93 33 04  sts 0x0433, r21                ; v_0433
  1998:  40 93 32 04  sts 0x0432, r20                ; v_0432
  199c:  49 e7        ldi r20, 0x79                  ; r21:r20 = 0xff79 (65401)
  199e:  59 ee        ldi r21, 0xe9                  ; r21:r20 = 0xe979 (59769)
  19a0:  6c e1        ldi r22, 0x1c                  
  19a2:  71 e4        ldi r23, 0x41                  ; r23:r22 = 0x411c (16668)
  19a4:  40 93 34 04  sts 0x0434, r20                ; v_0434
  19a8:  50 93 35 04  sts 0x0435, r21                ; v_0435
  19ac:  60 93 36 04  sts 0x0436, r22                ; v_0436
  19b0:  70 93 37 04  sts 0x0437, r23                ; v_0437
  19b4:  45 e3        ldi r20, 0x35                  
  19b6:  5a ef        ldi r21, 0xfa                  ; r21:r20 = 0xfa35 (64053)
  19b8:  6e e8        ldi r22, 0x8e                  
  19ba:  7c e3        ldi r23, 0x3c                  ; r23:r22 = 0x3c8e (15502)
  19bc:  40 93 38 04  sts 0x0438, r20                ; v_0438
  19c0:  50 93 39 04  sts 0x0439, r21                ; v_0439
  19c4:  60 93 3a 04  sts 0x043a, r22                ; v_043a
  19c8:  70 93 3b 04  sts 0x043b, r23                ; v_043b
  19cc:  8b e3        ldi r24, 0x3b                  
  19ce:  80 93 3c 04  sts 0x043c, r24                ; v_043c
  19d2:  83 e4        ldi r24, 0x43                  
  19d4:  80 93 3d 04  sts 0x043d, r24                ; v_043d
  19d8:  81 e4        ldi r24, 0x41                  
  19da:  80 93 3e 04  sts 0x043e, r24                ; v_043e
  19de:  89 e4        ldi r24, 0x49                  
  19e0:  80 93 3f 04  sts 0x043f, r24                ; v_043f
  19e4:  8c e1        ldi r24, 0x1c                  
  19e6:  80 93 40 04  sts 0x0440, r24                ; v_0440
  19ea:  10 92 41 04  sts 0x0441, r1                 ; v_0441
  19ee:  20 93 42 04  sts 0x0442, r18                ; v_0442
  19f2:  30 e1        ldi r19, 0x10                  
  19f4:  30 93 43 04  sts 0x0443, r19                ; v_0443
  19f8:  88 e1        ldi r24, 0x18                  
  19fa:  80 93 44 04  sts 0x0444, r24                ; v_0444
  19fe:  4b e1        ldi r20, 0x1b                  
  1a00:  40 93 45 04  sts 0x0445, r20                ; v_0445
  1a04:  10 92 46 04  sts 0x0446, r1                 ; v_0446
  1a08:  20 93 47 04  sts 0x0447, r18                ; v_0447
  1a0c:  30 93 48 04  sts 0x0448, r19                ; v_0448
  1a10:  80 93 49 04  sts 0x0449, r24                ; v_0449
  1a14:  8d e1        ldi r24, 0x1d                  
  1a16:  80 93 4a 04  sts 0x044a, r24                ; v_044a
  1a1a:  81 e0        ldi r24, 0x01                  
  1a1c:  80 93 4b 04  sts 0x044b, r24                ; v_044b
  1a20:  c2 e0        ldi r28, 0x02                  
  1a22:  c0 93 4c 04  sts 0x044c, r28                ; v_044c
  1a26:  43 e0        ldi r20, 0x03                  
  1a28:  40 93 4d 04  sts 0x044d, r20                ; v_044d
  1a2c:  74 e0        ldi r23, 0x04                  
  1a2e:  70 93 4e 04  sts 0x044e, r23                ; v_044e
  1a32:  65 e0        ldi r22, 0x05                  ; r23:r22 = 0x0405 (1029)
  1a34:  60 93 4f 04  sts 0x044f, r22                ; v_044f
  1a38:  56 e0        ldi r21, 0x06                  
  1a3a:  50 93 50 04  sts 0x0450, r21                ; v_0450
  1a3e:  da e1        ldi r29, 0x1a                  
  1a40:  d0 93 51 04  sts 0x0451, r29                ; v_0451
  1a44:  80 93 52 04  sts 0x0452, r24                ; v_0452
  1a48:  c0 93 53 04  sts 0x0453, r28                ; v_0453
  1a4c:  40 93 54 04  sts 0x0454, r20                ; v_0454
  1a50:  70 93 55 04  sts 0x0455, r23                ; v_0455
  1a54:  60 93 56 04  sts 0x0456, r22                ; v_0456
  1a58:  50 93 57 04  sts 0x0457, r21                ; v_0457
  1a5c:  59 e1        ldi r21, 0x19                  
  1a5e:  50 93 58 04  sts 0x0458, r21                ; v_0458
  1a62:  57 e3        ldi r21, 0x37                  
  1a64:  50 93 59 04  sts 0x0459, r21                ; v_0459
  1a68:  58 e3        ldi r21, 0x38                  
  1a6a:  50 93 5a 04  sts 0x045a, r21                ; v_045a
  1a6e:  10 92 5b 04  sts 0x045b, r1                 ; v_045b
  1a72:  10 92 5c 04  sts 0x045c, r1                 ; v_045c
  1a76:  50 e4        ldi r21, 0x40                  
  1a78:  50 93 5d 04  sts 0x045d, r21                ; v_045d
  1a7c:  80 93 5e 04  sts 0x045e, r24                ; v_045e
  1a80:  6b e6        ldi r22, 0x6b                  
  1a82:  60 93 5f 04  sts 0x045f, r22                ; v_045f
  1a86:  60 e2        ldi r22, 0x20                  
  1a88:  60 93 60 04  sts 0x0460, r22                ; v_0460
  1a8c:  90 93 61 04  sts 0x0461, r25                ; v_0461
  1a90:  80 93 62 04  sts 0x0462, r24                ; v_0462
  1a94:  7c e6        ldi r23, 0x6c                  
  1a96:  70 93 63 04  sts 0x0463, r23                ; v_0463
  1a9a:  10 92 64 04  sts 0x0464, r1                 ; v_0464
  1a9e:  77 e0        ldi r23, 0x07                  
  1aa0:  70 93 65 04  sts 0x0465, r23                ; v_0465
  1aa4:  7a e6        ldi r23, 0x6a                  
  1aa6:  70 93 66 04  sts 0x0466, r23                ; v_0466
  1aaa:  60 93 67 04  sts 0x0467, r22                ; v_0467
  1aae:  6d e0        ldi r22, 0x0d                  ; r23:r22 = 0x6a0d (27149)
  1ab0:  60 93 68 04  sts 0x0468, r22                ; v_0468
  1ab4:  64 e2        ldi r22, 0x24                  
  1ab6:  60 93 69 04  sts 0x0469, r22                ; v_0469
  1aba:  65 e2        ldi r22, 0x25                  
  1abc:  60 93 6a 04  sts 0x046a, r22                ; v_046a
  1ac0:  66 e2        ldi r22, 0x26                  
  1ac2:  60 93 6b 04  sts 0x046b, r22                ; v_046b
  1ac6:  63 e6        ldi r22, 0x63                  
  1ac8:  60 93 6c 04  sts 0x046c, r22                ; v_046c
  1acc:  67 e2        ldi r22, 0x27                  
  1ace:  60 93 6d 04  sts 0x046d, r22                ; v_046d
  1ad2:  90 93 6e 04  sts 0x046e, r25                ; v_046e
  1ad6:  90 93 6f 04  sts 0x046f, r25                ; v_046f
  1ada:  69 e6        ldi r22, 0x69                  
  1adc:  60 93 70 04  sts 0x0470, r22                ; v_0470
  1ae0:  90 93 71 04  sts 0x0471, r25                ; v_0471
  1ae4:  50 93 72 04  sts 0x0472, r21                ; v_0472
  1ae8:  5e e1        ldi r21, 0x1e                  
  1aea:  50 93 73 04  sts 0x0473, r21                ; v_0473
  1aee:  5f e1        ldi r21, 0x1f                  
  1af0:  50 93 74 04  sts 0x0474, r21                ; v_0474
  1af4:  55 e7        ldi r21, 0x75                  
  1af6:  50 93 75 04  sts 0x0475, r21                ; v_0475
  1afa:  53 e2        ldi r21, 0x23                  
  1afc:  50 93 76 04  sts 0x0476, r21                ; v_0476
  1b00:  90 93 77 04  sts 0x0477, r25                ; v_0477
  1b04:  90 e7        ldi r25, 0x70                  
  1b06:  90 93 78 04  sts 0x0478, r25                ; v_0478
  1b0a:  20 93 79 04  sts 0x0479, r18                ; v_0479
  1b0e:  80 93 7a 04  sts 0x047a, r24                ; v_047a
  1b12:  92 e7        ldi r25, 0x72                  
  1b14:  90 93 7b 04  sts 0x047b, r25                ; v_047b
  1b18:  94 e7        ldi r25, 0x74                  
  1b1a:  90 93 7c 04  sts 0x047c, r25                ; v_047c
  1b1e:  9c e0        ldi r25, 0x0c                  
  1b20:  90 93 7d 04  sts 0x047d, r25                ; v_047d
  1b24:  40 93 7e 04  sts 0x047e, r20                ; v_047e
  1b28:  9a e0        ldi r25, 0x0a                  
  1b2a:  90 93 7f 04  sts 0x047f, r25                ; v_047f
  1b2e:  10 92 80 04  sts 0x0480, r1                 ; v_0480
  1b32:  92 e1        ldi r25, 0x12                  
  1b34:  90 93 81 04  sts 0x0481, r25                ; v_0481
  1b38:  96 e1        ldi r25, 0x16                  
  1b3a:  90 93 82 04  sts 0x0482, r25                ; v_0482
  1b3e:  9f e0        ldi r25, 0x0f                  
  1b40:  90 93 83 04  sts 0x0483, r25                ; v_0483
  1b44:  9b e0        ldi r25, 0x0b                  
  1b46:  90 93 84 04  sts 0x0484, r25                ; v_0484
  1b4a:  80 93 85 04  sts 0x0485, r24                ; v_0485
  1b4e:  30 93 86 04  sts 0x0486, r19                ; v_0486
  1b52:  10 92 87 04  sts 0x0487, r1                 ; v_0487
  1b56:  b2 83        std Z+2, r27                   
  1b58:  a1 83        std Z+1, r26                   
  1b5a:  88 e6        ldi r24, 0x68                  
  1b5c:  80 83        st Z, r24                      
  1b5e:  14 86        std Z+12, r1                   
  1b60:  df 91        pop r29                        
  1b62:  cf 91        pop r28                        
  1b64:  1f 91        pop r17                        
  1b66:  0f 91        pop r16                        
  1b68:  08 95        ret                            

; ===== main =====
main:
  1b6a:  78 94        sei                            
  1b6c:  84 b5        in r24, 0x24                   ; TCCR0A
  1b6e:  82 60        ori r24, 0x02                  
  1b70:  84 bd        out 0x24, r24                  ; TCCR0A
  1b72:  84 b5        in r24, 0x24                   ; TCCR0A
  1b74:  81 60        ori r24, 0x01                  
  1b76:  84 bd        out 0x24, r24                  ; TCCR0A
  1b78:  85 b5        in r24, 0x25                   ; TCCR0B
  1b7a:  82 60        ori r24, 0x02                  
  1b7c:  85 bd        out 0x25, r24                  ; TCCR0B
  1b7e:  85 b5        in r24, 0x25                   ; TCCR0B
  1b80:  81 60        ori r24, 0x01                  
  1b82:  85 bd        out 0x25, r24                  ; TCCR0B
  1b84:  80 91 6e 00  lds r24, 0x006e                ; TIMSK0
  1b88:  81 60        ori r24, 0x01                  
  1b8a:  80 93 6e 00  sts 0x006e, r24                ; TIMSK0
  1b8e:  10 92 81 00  sts 0x0081, r1                 ; TCCR1B
  1b92:  80 91 81 00  lds r24, 0x0081                ; TCCR1B
  1b96:  82 60        ori r24, 0x02                  
  1b98:  80 93 81 00  sts 0x0081, r24                ; TCCR1B
  1b9c:  80 91 81 00  lds r24, 0x0081                ; TCCR1B
  1ba0:  81 60        ori r24, 0x01                  
  1ba2:  80 93 81 00  sts 0x0081, r24                ; TCCR1B
  1ba6:  80 91 80 00  lds r24, 0x0080                ; TCCR1A
  1baa:  81 60        ori r24, 0x01                  
  1bac:  80 93 80 00  sts 0x0080, r24                ; TCCR1A
  1bb0:  80 91 b1 00  lds r24, 0x00b1                ; TCCR2B
  1bb4:  84 60        ori r24, 0x04                  
  1bb6:  80 93 b1 00  sts 0x00b1, r24                ; TCCR2B
  1bba:  80 91 b0 00  lds r24, 0x00b0                ; TCCR2A
  1bbe:  81 60        ori r24, 0x01                  
  1bc0:  80 93 b0 00  sts 0x00b0, r24                ; TCCR2A
  1bc4:  80 91 7a 00  lds r24, 0x007a                ; ADCSRA
  1bc8:  84 60        ori r24, 0x04                  
  1bca:  80 93 7a 00  sts 0x007a, r24                ; ADCSRA
  1bce:  80 91 7a 00  lds r24, 0x007a                ; ADCSRA
  1bd2:  82 60        ori r24, 0x02                  
  1bd4:  80 93 7a 00  sts 0x007a, r24                ; ADCSRA
  1bd8:  80 91 7a 00  lds r24, 0x007a                ; ADCSRA
  1bdc:  81 60        ori r24, 0x01                  
  1bde:  80 93 7a 00  sts 0x007a, r24                ; ADCSRA
  1be2:  80 91 7a 00  lds r24, 0x007a                ; ADCSRA
  1be6:  80 68        ori r24, 0x80                  
  1be8:  80 93 7a 00  sts 0x007a, r24                ; ADCSRA
  1bec:  10 92 c1 00  sts 0x00c1, r1                 ; UCSR0B
  1bf0:  e0 91 54 02  lds r30, 0x0254                ; v_0254
  1bf4:  f0 91 55 02  lds r31, 0x0255                ; v_0255
  1bf8:  82 e0        ldi r24, 0x02                  
  1bfa:  80 83        st Z, r24                      
  1bfc:  e0 91 50 02  lds r30, 0x0250                ; v_0250
  1c00:  f0 91 51 02  lds r31, 0x0251                ; v_0251
  1c04:  10 82        st Z, r1                       
  1c06:  e0 91 52 02  lds r30, 0x0252                ; v_0252
  1c0a:  f0 91 53 02  lds r31, 0x0253                ; v_0253
  1c0e:  80 e1        ldi r24, 0x10                  
  1c10:  80 83        st Z, r24                      
  1c12:  10 92 5c 02  sts 0x025c, r1                 ; v_025c
  1c16:  e0 91 58 02  lds r30, 0x0258                ; v_0258
  1c1a:  f0 91 59 02  lds r31, 0x0259                ; v_0259
  1c1e:  86 e0        ldi r24, 0x06                  
  1c20:  80 83        st Z, r24                      
  1c22:  e0 91 56 02  lds r30, 0x0256                ; v_0256
  1c26:  f0 91 57 02  lds r31, 0x0257                ; v_0257
  1c2a:  80 81        ld r24, Z                      
  1c2c:  80 61        ori r24, 0x10                  
  1c2e:  80 83        st Z, r24                      
  1c30:  e0 91 56 02  lds r30, 0x0256                ; v_0256
  1c34:  f0 91 57 02  lds r31, 0x0257                ; v_0257
  1c38:  80 81        ld r24, Z                      
  1c3a:  88 60        ori r24, 0x08                  
  1c3c:  80 83        st Z, r24                      
  1c3e:  e0 91 56 02  lds r30, 0x0256                ; v_0256
  1c42:  f0 91 57 02  lds r31, 0x0257                ; v_0257
  1c46:  80 81        ld r24, Z                      
  1c48:  80 68        ori r24, 0x80                  
  1c4a:  80 83        st Z, r24                      
  1c4c:  e0 91 56 02  lds r30, 0x0256                ; v_0256
  1c50:  f0 91 57 02  lds r31, 0x0257                ; v_0257
  1c54:  80 81        ld r24, Z                      
  1c56:  8f 7d        andi r24, 0xdf                 
  1c58:  80 83        st Z, r24                      
  1c5a:  80 91 f9 02  lds r24, 0x02f9                ; v_02f9
  1c5e:  88 23        tst r24                        
  1c60:  09 f4        brne L_1c64                    ; -> 0x1c64
  1c62:  8c c0        rjmp L_1d7c                    ; -> 0x1d7c
L_1c64:
  1c64:  10 92 fa 02  sts 0x02fa, r1                 ; v_02fa
  1c68:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  1c6c:  0e 94 e4 00  call F_01c8                    ; -> 0x01c8
  1c70:  61 e0        ldi r22, 0x01                  
  1c72:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  1c76:  0e 94 12 02  call fnA_0424                  ; -> 0x0424
  1c7a:  cf b7        in r28, 0x3f                   ; SREG
  1c7c:  f8 94        cli                            
  1c7e:  80 91 d4 01  lds r24, 0x01d4                ; v_01d4
  1c82:  81 11        cpse r24, r1                   
  1c84:  24 c0        rjmp L_1cce                    ; -> 0x1cce
  1c86:  ea e9        ldi r30, 0x9a                  
  1c88:  f0 e0        ldi r31, 0x00                  ; r31:r30 = 0x009a (154)
  1c8a:  84 91        lpm r24, Z                     
  1c8c:  ee ea        ldi r30, 0xae                  ; r31:r30 = 0x00ae (174)
  1c8e:  f0 e0        ldi r31, 0x00                  ; r31:r30 = 0x00ae (174)
  1c90:  94 91        lpm r25, Z                     
  1c92:  e8 2f        mov r30, r24                   
  1c94:  f0 e0        ldi r31, 0x00                  ; r31:r30 = 0x00ae (174)
  1c96:  ee 0f        lsl r30                        
  1c98:  ff 1f        rol r31                        
  1c9a:  ea 57        subi r30, 0x7a                 
  1c9c:  ff 4f        sbci r31, 0xff                 
  1c9e:  a5 91        lpm r26, Z+                    
  1ca0:  b4 91        lpm r27, Z                     
  1ca2:  ec 91        ld r30, X                      
  1ca4:  e9 23        and r30, r25                   
  1ca6:  21 f4        brne L_1cb0                    ; -> 0x1cb0
  1ca8:  61 e0        ldi r22, 0x01                  
  1caa:  8a e0        ldi r24, 0x0a                  
  1cac:  0e 94 12 02  call fnA_0424                  ; -> 0x0424
L_1cb0:
  1cb0:  8a e0        ldi r24, 0x0a                  
  1cb2:  0e 94 e4 00  call F_01c8                    ; -> 0x01c8
  1cb6:  8c b5        in r24, 0x2c                   ; SPCR
  1cb8:  80 61        ori r24, 0x10                  
  1cba:  8c bd        out 0x2c, r24                  ; SPCR
  1cbc:  8c b5        in r24, 0x2c                   ; SPCR
  1cbe:  80 64        ori r24, 0x40                  
  1cc0:  8c bd        out 0x2c, r24                  ; SPCR
  1cc2:  8d e0        ldi r24, 0x0d                  
  1cc4:  0e 94 e4 00  call F_01c8                    ; -> 0x01c8
  1cc8:  8b e0        ldi r24, 0x0b                  
  1cca:  0e 94 e4 00  call F_01c8                    ; -> 0x01c8
L_1cce:
  1cce:  80 91 d4 01  lds r24, 0x01d4                ; v_01d4
  1cd2:  8f 5f        subi r24, 0xff                 
  1cd4:  80 93 d4 01  sts 0x01d4, r24                ; v_01d4
  1cd8:  cf bf        out 0x3f, r28                  ; SREG
L_1cda:
  1cda:  60 91 62 04  lds r22, 0x0462                ; v_0462
  1cde:  80 91 5f 04  lds r24, 0x045f                ; v_045f
  1ce2:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1ce6:  97 fd        sbrc r25, 7                    
  1ce8:  04 c5        rjmp L_26f2                    ; -> 0x26f2
  1cea:  60 91 67 04  lds r22, 0x0467                ; v_0467
  1cee:  80 91 66 04  lds r24, 0x0466                ; v_0466
  1cf2:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1cf6:  97 fd        sbrc r25, 7                    
  1cf8:  f9 c4        rjmp L_26ec                    ; -> 0x26ec
  1cfa:  60 91 68 04  lds r22, 0x0468                ; v_0468
  1cfe:  80 91 69 04  lds r24, 0x0469                ; v_0469
  1d02:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1d06:  97 fd        sbrc r25, 7                    
  1d08:  ee c4        rjmp L_26e6                    ; -> 0x26e6
  1d0a:  60 91 80 04  lds r22, 0x0480                ; v_0480
  1d0e:  80 91 7f 04  lds r24, 0x047f                ; v_047f
  1d12:  0e 94 a9 08  call F_1152                    ; -> 0x1152
  1d16:  60 91 61 04  lds r22, 0x0461                ; v_0461
  1d1a:  80 91 5f 04  lds r24, 0x045f                ; v_045f
  1d1e:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1d22:  61 e0        ldi r22, 0x01                  
  1d24:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  1d26:  80 e0        ldi r24, 0x00                  
  1d28:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1d2a:  0e 94 83 02  call delay                     ; -> 0x0506
  1d2e:  60 91 85 04  lds r22, 0x0485                ; v_0485
  1d32:  80 91 84 04  lds r24, 0x0484                ; v_0484
  1d36:  0e 94 a9 08  call F_1152                    ; -> 0x1152
  1d3a:  60 91 62 04  lds r22, 0x0462                ; v_0462
  1d3e:  80 91 5f 04  lds r24, 0x045f                ; v_045f
  1d42:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1d46:  97 fd        sbrc r25, 7                    
  1d48:  cb c4        rjmp L_26e0                    ; -> 0x26e0
  1d4a:  46 e0        ldi r20, 0x06                  
  1d4c:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x0306 (774)
  1d4e:  61 e0        ldi r22, 0x01                  
  1d50:  80 91 75 04  lds r24, 0x0475                ; v_0475
  1d54:  0e 94 f8 03  call F_07f0                    ; -> 0x07f0
  1d58:  97 fd        sbrc r25, 7                    
  1d5a:  5c c0        rjmp L_1e14                    ; -> 0x1e14
  1d5c:  80 91 06 03  lds r24, 0x0306                ; v_0306
  1d60:  81 37        cpi r24, 0x71                  
  1d62:  09 f0        breq L_1d66                    ; -> 0x1d66
  1d64:  57 c0        rjmp L_1e14                    ; -> 0x1e14
L_1d66:
  1d66:  60 91 64 04  lds r22, 0x0464                ; v_0464
  1d6a:  80 91 63 04  lds r24, 0x0463                ; v_0463
  1d6e:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1d72:  97 ff        sbrs r25, 7                    
  1d74:  60 c0        rjmp L_1e36                    ; -> 0x1e36
  1d76:  8a ef        ldi r24, 0xfa                  
  1d78:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffa (65530)
  1d7a:  d0 c3        rjmp L_251c                    ; -> 0x251c
L_1d7c:
  1d7c:  10 92 d8 01  sts 0x01d8, r1                 ; v_01d8
  1d80:  10 92 d7 01  sts 0x01d7, r1                 ; v_01d7
  1d84:  10 92 21 02  sts 0x0221, r1                 ; v_0221
  1d88:  10 92 43 02  sts 0x0243, r1                 ; v_0243
  1d8c:  10 92 1f 02  sts 0x021f, r1                 ; v_021f
  1d90:  81 e0        ldi r24, 0x01                  
  1d92:  80 93 1e 02  sts 0x021e, r24                ; v_021e
  1d96:  10 92 f9 01  sts 0x01f9, r1                 ; v_01f9
  1d9a:  61 e0        ldi r22, 0x01                  
  1d9c:  82 e1        ldi r24, 0x12                  
  1d9e:  0e 94 12 02  call fnA_0424                  ; -> 0x0424
  1da2:  61 e0        ldi r22, 0x01                  
  1da4:  83 e1        ldi r24, 0x13                  
  1da6:  0e 94 12 02  call fnA_0424                  ; -> 0x0424
  1daa:  80 91 b9 00  lds r24, 0x00b9                ; TWSR
  1dae:  8e 7f        andi r24, 0xfe                 
  1db0:  80 93 b9 00  sts 0x00b9, r24                ; TWSR
  1db4:  80 91 b9 00  lds r24, 0x00b9                ; TWSR
  1db8:  8d 7f        andi r24, 0xfd                 
  1dba:  80 93 b9 00  sts 0x00b9, r24                ; TWSR
  1dbe:  88 e4        ldi r24, 0x48                  
  1dc0:  80 93 b8 00  sts 0x00b8, r24                ; TWBR
  1dc4:  85 e4        ldi r24, 0x45                  
  1dc6:  80 93 bc 00  sts 0x00bc, r24                ; TWCR
  1dca:  83 e0        ldi r24, 0x03                  
  1dcc:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0103 (259)
  1dce:  90 93 d3 01  sts 0x01d3, r25                ; v_01d3
  1dd2:  80 93 d2 01  sts 0x01d2, r24                ; v_01d2
  1dd6:  84 e0        ldi r24, 0x04                  ; r25:r24 = 0x0104 (260)
  1dd8:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0104 (260)
  1dda:  90 93 d1 01  sts 0x01d1, r25                ; v_01d1
  1dde:  80 93 d0 01  sts 0x01d0, r24                ; v_01d0
  1de2:  20 91 f0 02  lds r18, 0x02f0                ; v_02f0
  1de6:  30 91 f1 02  lds r19, 0x02f1                ; v_02f1
  1dea:  40 91 f2 02  lds r20, 0x02f2                ; v_02f2
  1dee:  50 91 f3 02  lds r21, 0x02f3                ; v_02f3
  1df2:  60 e0        ldi r22, 0x00                  
  1df4:  74 e2        ldi r23, 0x24                  ; r23:r22 = 0x2400 (9216)
  1df6:  84 ef        ldi r24, 0xf4                  
  1df8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x00f4 (244)
  1dfa:  0e 94 7c 13  call F_26f8                    ; -> 0x26f8
  1dfe:  20 51        subi r18, 0x10                 
  1e00:  31 09        sbc r19, r1                    
  1e02:  41 09        sbc r20, r1                    
  1e04:  51 09        sbc r21, r1                    
  1e06:  56 95        lsr r21                        
  1e08:  47 95        ror r20                        
  1e0a:  37 95        ror r19                        
  1e0c:  27 95        ror r18                        
  1e0e:  20 93 b8 00  sts 0x00b8, r18                ; TWBR
  1e12:  63 cf        rjmp L_1cda                    ; -> 0x1cda
L_1e14:
  1e14:  46 e0        ldi r20, 0x06                  
  1e16:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x0306 (774)
  1e18:  61 e0        ldi r22, 0x01                  
  1e1a:  80 91 75 04  lds r24, 0x0475                ; v_0475
  1e1e:  0e 94 f8 03  call F_07f0                    ; -> 0x07f0
  1e22:  97 fd        sbrc r25, 7                    
  1e24:  05 c0        rjmp L_1e30                    ; -> 0x1e30
  1e26:  80 91 06 03  lds r24, 0x0306                ; v_0306
  1e2a:  83 37        cpi r24, 0x73                  
  1e2c:  09 f4        brne L_1e30                    ; -> 0x1e30
  1e2e:  9b cf        rjmp L_1d66                    ; -> 0x1d66
L_1e30:
  1e30:  8b ef        ldi r24, 0xfb                  
  1e32:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffb (65531)
  1e34:  73 c3        rjmp L_251c                    ; -> 0x251c
L_1e36:
  1e36:  60 91 44 04  lds r22, 0x0444                ; v_0444
  1e3a:  80 91 40 04  lds r24, 0x0440                ; v_0440
  1e3e:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1e42:  97 fd        sbrc r25, 7                    
  1e44:  4a c4        rjmp L_26da                    ; -> 0x26da
  1e46:  20 e0        ldi r18, 0x00                  
  1e48:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  1e4a:  40 e8        ldi r20, 0x80                  
  1e4c:  51 e4        ldi r21, 0x41                  ; r21:r20 = 0x4180 (16768)
  1e4e:  60 91 34 04  lds r22, 0x0434                ; v_0434
  1e52:  70 91 35 04  lds r23, 0x0435                ; v_0435
  1e56:  80 91 36 04  lds r24, 0x0436                ; v_0436
  1e5a:  90 91 37 04  lds r25, 0x0437                ; v_0437
  1e5e:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  1e62:  20 e0        ldi r18, 0x00                  
  1e64:  3f ef        ldi r19, 0xff                  ; r19:r18 = 0xff00 (65280)
  1e66:  4f ef        ldi r20, 0xff                  
  1e68:  56 e4        ldi r21, 0x46                  ; r21:r20 = 0x46ff (18175)
  1e6a:  0e 94 10 14  call F_2820                    ; -> 0x2820
  1e6e:  60 93 58 03  sts 0x0358, r22                ; v_0358
  1e72:  70 93 59 03  sts 0x0359, r23                ; v_0359
  1e76:  80 93 5a 03  sts 0x035a, r24                ; v_035a
  1e7a:  90 93 5b 03  sts 0x035b, r25                ; v_035b
  1e7e:  c3 e0        ldi r28, 0x03                  
  1e80:  d0 e0        ldi r29, 0x00                  ; r29:r28 = 0x0003 (3)
  1e82:  d0 93 75 03  sts 0x0375, r29                ; v_0375
  1e86:  c0 93 74 03  sts 0x0374, r28                ; v_0374
  1e8a:  60 91 49 04  lds r22, 0x0449                ; v_0449
  1e8e:  80 91 45 04  lds r24, 0x0445                ; v_0445
  1e92:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1e96:  97 fd        sbrc r25, 7                    
  1e98:  1d c4        rjmp L_26d4                    ; -> 0x26d4
  1e9a:  2a ef        ldi r18, 0xfa                  
  1e9c:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00fa (250)
  1e9e:  4a e7        ldi r20, 0x7a                  
  1ea0:  5d e3        ldi r21, 0x3d                  ; r21:r20 = 0x3d7a (15738)
  1ea2:  60 91 38 04  lds r22, 0x0438                ; v_0438
  1ea6:  70 91 39 04  lds r23, 0x0439                ; v_0439
  1eaa:  80 91 3a 04  lds r24, 0x043a                ; v_043a
  1eae:  90 91 3b 04  lds r25, 0x043b                ; v_043b
  1eb2:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  1eb6:  60 93 5c 03  sts 0x035c, r22                ; v_035c
  1eba:  70 93 5d 03  sts 0x035d, r23                ; v_035d
  1ebe:  80 93 5e 03  sts 0x035e, r24                ; v_035e
  1ec2:  90 93 5f 03  sts 0x035f, r25                ; v_035f
  1ec6:  d0 93 77 03  sts 0x0377, r29                ; v_0377
  1eca:  c0 93 76 03  sts 0x0376, r28                ; v_0376
  1ece:  60 91 4b 04  lds r22, 0x044b                ; v_044b
  1ed2:  80 91 4a 04  lds r24, 0x044a                ; v_044a
  1ed6:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1eda:  97 fd        sbrc r25, 7                    
  1edc:  f8 c3        rjmp L_26ce                    ; -> 0x26ce
  1ede:  60 91 52 04  lds r22, 0x0452                ; v_0452
  1ee2:  80 91 51 04  lds r24, 0x0451                ; v_0451
  1ee6:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1eea:  97 fd        sbrc r25, 7                    
  1eec:  ed c3        rjmp L_26c8                    ; -> 0x26c8
  1eee:  10 92 79 03  sts 0x0379, r1                 ; v_0379
  1ef2:  10 92 78 03  sts 0x0378, r1                 ; v_0378
  1ef6:  60 e0        ldi r22, 0x00                  
  1ef8:  80 91 58 04  lds r24, 0x0458                ; v_0458
  1efc:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1f00:  97 fd        sbrc r25, 7                    
  1f02:  df c3        rjmp L_26c2                    ; -> 0x26c2
  1f04:  10 92 7a 03  sts 0x037a, r1                 ; v_037a
  1f08:  60 91 67 04  lds r22, 0x0467                ; v_0467
  1f0c:  80 91 66 04  lds r24, 0x0466                ; v_0466
  1f10:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1f14:  97 fd        sbrc r25, 7                    
  1f16:  d2 c3        rjmp L_26bc                    ; -> 0x26bc
  1f18:  60 91 68 04  lds r22, 0x0468                ; v_0468
  1f1c:  80 91 69 04  lds r24, 0x0469                ; v_0469
  1f20:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  1f24:  97 fd        sbrc r25, 7                    
  1f26:  c7 c3        rjmp L_26b6                    ; -> 0x26b6
  1f28:  46 e0        ldi r20, 0x06                  
  1f2a:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x0306 (774)
  1f2c:  61 e0        ldi r22, 0x01                  
  1f2e:  80 91 87 04  lds r24, 0x0487                ; v_0487
  1f32:  0e 94 69 08  call F_10d2                    ; -> 0x10d2
  1f36:  97 fd        sbrc r25, 7                    
  1f38:  bb c3        rjmp L_26b0                    ; -> 0x26b0
  1f3a:  80 91 06 03  lds r24, 0x0306                ; v_0306
  1f3e:  88 34        cpi r24, 0x48                  
  1f40:  09 f0        breq L_1f44                    ; -> 0x1f44
  1f42:  b6 c3        rjmp L_26b0                    ; -> 0x26b0
L_1f44:
  1f44:  60 91 80 04  lds r22, 0x0480                ; v_0480
  1f48:  80 91 7f 04  lds r24, 0x047f                ; v_047f
  1f4c:  0e 94 a9 08  call F_1152                    ; -> 0x1152
  1f50:  97 fd        sbrc r25, 7                    
  1f52:  ab c3        rjmp L_26aa                    ; -> 0x26aa
  1f54:  64 e6        ldi r22, 0x64                  
  1f56:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  1f58:  80 e0        ldi r24, 0x00                  
  1f5a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1f5c:  0e 94 83 02  call delay                     ; -> 0x0506
  1f60:  60 91 83 04  lds r22, 0x0483                ; v_0483
  1f64:  80 91 7f 04  lds r24, 0x047f                ; v_047f
  1f68:  0e 94 a9 08  call F_1152                    ; -> 0x1152
  1f6c:  97 fd        sbrc r25, 7                    
  1f6e:  9a c3        rjmp L_26a4                    ; -> 0x26a4
  1f70:  64 e6        ldi r22, 0x64                  
  1f72:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  1f74:  80 e0        ldi r24, 0x00                  
  1f76:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1f78:  0e 94 83 02  call delay                     ; -> 0x0506
  1f7c:  46 e0        ldi r20, 0x06                  
  1f7e:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x0306 (774)
  1f80:  63 e0        ldi r22, 0x03                  
  1f82:  80 91 86 04  lds r24, 0x0486                ; v_0486
  1f86:  0e 94 69 08  call F_10d2                    ; -> 0x10d2
  1f8a:  60 91 06 03  lds r22, 0x0306                ; v_0306
  1f8e:  70 e0        ldi r23, 0x00                  
  1f90:  90 e0        ldi r25, 0x00                  
  1f92:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1f94:  0e 94 b1 14  call F_2962                    ; -> 0x2962
  1f98:  20 e0        ldi r18, 0x00                  
  1f9a:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  1f9c:  40 e0        ldi r20, 0x00                  
  1f9e:  53 e4        ldi r21, 0x43                  ; r21:r20 = 0x4300 (17152)
  1fa0:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  1fa4:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  1fa6:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  1fa8:  40 e8        ldi r20, 0x80                  ; r21:r20 = 0x4380 (17280)
  1faa:  5b e3        ldi r21, 0x3b                  ; r21:r20 = 0x3b80 (15232)
  1fac:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  1fb0:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  1fb2:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  1fb4:  40 e8        ldi r20, 0x80                  ; r21:r20 = 0x3b80 (15232)
  1fb6:  5f e3        ldi r21, 0x3f                  ; r21:r20 = 0x3f80 (16256)
  1fb8:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  1fbc:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  1fbe:  30 e8        ldi r19, 0x80                  ; r19:r18 = 0x8000 (32768)
  1fc0:  49 e9        ldi r20, 0x99                  ; r21:r20 = 0x3f99 (16281)
  1fc2:  55 e4        ldi r21, 0x45                  ; r21:r20 = 0x4599 (17817)
  1fc4:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  1fc8:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x8000 (32768)
  1fca:  30 ef        ldi r19, 0xf0                  ; r19:r18 = 0xf000 (61440)
  1fcc:  4f ef        ldi r20, 0xff                  ; r21:r20 = 0x45ff (17919)
  1fce:  56 e4        ldi r21, 0x46                  ; r21:r20 = 0x46ff (18175)
  1fd0:  0e 94 10 14  call F_2820                    ; -> 0x2820
  1fd4:  60 93 60 03  sts 0x0360, r22                ; v_0360
  1fd8:  70 93 61 03  sts 0x0361, r23                ; v_0361
  1fdc:  80 93 62 03  sts 0x0362, r24                ; v_0362
  1fe0:  90 93 63 03  sts 0x0363, r25                ; v_0363
  1fe4:  60 91 07 03  lds r22, 0x0307                ; v_0307
  1fe8:  70 e0        ldi r23, 0x00                  
  1fea:  90 e0        ldi r25, 0x00                  
  1fec:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1fee:  0e 94 b1 14  call F_2962                    ; -> 0x2962
  1ff2:  20 e0        ldi r18, 0x00                  
  1ff4:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  1ff6:  40 e0        ldi r20, 0x00                  
  1ff8:  53 e4        ldi r21, 0x43                  ; r21:r20 = 0x4300 (17152)
  1ffa:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  1ffe:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  2000:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  2002:  40 e8        ldi r20, 0x80                  ; r21:r20 = 0x4380 (17280)
  2004:  5b e3        ldi r21, 0x3b                  ; r21:r20 = 0x3b80 (15232)
  2006:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  200a:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  200c:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  200e:  40 e8        ldi r20, 0x80                  ; r21:r20 = 0x3b80 (15232)
  2010:  5f e3        ldi r21, 0x3f                  ; r21:r20 = 0x3f80 (16256)
  2012:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  2016:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  2018:  30 e8        ldi r19, 0x80                  ; r19:r18 = 0x8000 (32768)
  201a:  49 e9        ldi r20, 0x99                  ; r21:r20 = 0x3f99 (16281)
  201c:  55 e4        ldi r21, 0x45                  ; r21:r20 = 0x4599 (17817)
  201e:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  2022:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x8000 (32768)
  2024:  30 ef        ldi r19, 0xf0                  ; r19:r18 = 0xf000 (61440)
  2026:  4f ef        ldi r20, 0xff                  ; r21:r20 = 0x45ff (17919)
  2028:  56 e4        ldi r21, 0x46                  ; r21:r20 = 0x46ff (18175)
  202a:  0e 94 10 14  call F_2820                    ; -> 0x2820
  202e:  60 93 64 03  sts 0x0364, r22                ; v_0364
  2032:  70 93 65 03  sts 0x0365, r23                ; v_0365
  2036:  80 93 66 03  sts 0x0366, r24                ; v_0366
  203a:  90 93 67 03  sts 0x0367, r25                ; v_0367
  203e:  60 91 08 03  lds r22, 0x0308                ; v_0308
  2042:  70 e0        ldi r23, 0x00                  
  2044:  90 e0        ldi r25, 0x00                  
  2046:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2048:  0e 94 b1 14  call F_2962                    ; -> 0x2962
  204c:  20 e0        ldi r18, 0x00                  
  204e:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  2050:  40 e0        ldi r20, 0x00                  
  2052:  53 e4        ldi r21, 0x43                  ; r21:r20 = 0x4300 (17152)
  2054:  0e 94 9e 13  call F_273c                    ; -> 0x273c
  2058:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  205a:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  205c:  40 e8        ldi r20, 0x80                  ; r21:r20 = 0x4380 (17280)
  205e:  5b e3        ldi r21, 0x3b                  ; r21:r20 = 0x3b80 (15232)
  2060:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  2064:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  2066:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  2068:  40 e8        ldi r20, 0x80                  ; r21:r20 = 0x3b80 (15232)
  206a:  5f e3        ldi r21, 0x3f                  ; r21:r20 = 0x3f80 (16256)
  206c:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  2070:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  2072:  30 e8        ldi r19, 0x80                  ; r19:r18 = 0x8000 (32768)
  2074:  49 e9        ldi r20, 0x99                  ; r21:r20 = 0x3f99 (16281)
  2076:  55 e4        ldi r21, 0x45                  ; r21:r20 = 0x4599 (17817)
  2078:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  207c:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x8000 (32768)
  207e:  30 ef        ldi r19, 0xf0                  ; r19:r18 = 0xf000 (61440)
  2080:  4f ef        ldi r20, 0xff                  ; r21:r20 = 0x45ff (17919)
  2082:  56 e4        ldi r21, 0x46                  ; r21:r20 = 0x46ff (18175)
  2084:  0e 94 10 14  call F_2820                    ; -> 0x2820
  2088:  60 93 68 03  sts 0x0368, r22                ; v_0368
  208c:  70 93 69 03  sts 0x0369, r23                ; v_0369
  2090:  80 93 6a 03  sts 0x036a, r24                ; v_036a
  2094:  90 93 6b 03  sts 0x036b, r25                ; v_036b
  2098:  60 91 80 04  lds r22, 0x0480                ; v_0480
  209c:  80 91 7f 04  lds r24, 0x047f                ; v_047f
  20a0:  0e 94 a9 08  call F_1152                    ; -> 0x1152
  20a4:  97 fd        sbrc r25, 7                    
  20a6:  fb c2        rjmp L_269e                    ; -> 0x269e
  20a8:  64 e6        ldi r22, 0x64                  
  20aa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  20ac:  80 e0        ldi r24, 0x00                  
  20ae:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  20b0:  0e 94 83 02  call delay                     ; -> 0x0506
  20b4:  60 91 82 04  lds r22, 0x0482                ; v_0482
  20b8:  80 91 7f 04  lds r24, 0x047f                ; v_047f
  20bc:  0e 94 a9 08  call F_1152                    ; -> 0x1152
  20c0:  97 fd        sbrc r25, 7                    
  20c2:  ea c2        rjmp L_2698                    ; -> 0x2698
  20c4:  64 e6        ldi r22, 0x64                  
  20c6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  20c8:  80 e0        ldi r24, 0x00                  
  20ca:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  20cc:  0e 94 83 02  call delay                     ; -> 0x0506
  20d0:  60 91 62 04  lds r22, 0x0462                ; v_0462
  20d4:  80 91 5f 04  lds r24, 0x045f                ; v_045f
  20d8:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  20dc:  97 fd        sbrc r25, 7                    
  20de:  d9 c2        rjmp L_2692                    ; -> 0x2692
  20e0:  46 e0        ldi r20, 0x06                  
  20e2:  53 e0        ldi r21, 0x03                  ; r21:r20 = 0x0306 (774)
  20e4:  67 e0        ldi r22, 0x07                  
  20e6:  80 91 7e 04  lds r24, 0x047e                ; v_047e
  20ea:  0e 94 69 08  call F_10d2                    ; -> 0x10d2
  20ee:  10 92 fa 02  sts 0x02fa, r1                 ; v_02fa
  20f2:  60 91 46 04  lds r22, 0x0446                ; v_0446
  20f6:  80 91 45 04  lds r24, 0x0445                ; v_0445
  20fa:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  20fe:  97 fd        sbrc r25, 7                    
  2100:  0b c2        rjmp L_2518                    ; -> 0x2518
  2102:  2a ef        ldi r18, 0xfa                  
  2104:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00fa (250)
  2106:  4a ef        ldi r20, 0xfa                  
  2108:  5b e3        ldi r21, 0x3b                  ; r21:r20 = 0x3bfa (15354)
  210a:  60 91 38 04  lds r22, 0x0438                ; v_0438
  210e:  70 91 39 04  lds r23, 0x0439                ; v_0439
  2112:  80 91 3a 04  lds r24, 0x043a                ; v_043a
  2116:  90 91 3b 04  lds r25, 0x043b                ; v_043b
  211a:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  211e:  60 93 5c 03  sts 0x035c, r22                ; v_035c
  2122:  70 93 5d 03  sts 0x035d, r23                ; v_035d
  2126:  80 93 5e 03  sts 0x035e, r24                ; v_035e
  212a:  90 93 5f 03  sts 0x035f, r25                ; v_035f
  212e:  10 92 77 03  sts 0x0377, r1                 ; v_0377
  2132:  10 92 76 03  sts 0x0376, r1                 ; v_0376
  2136:  10 92 fa 02  sts 0x02fa, r1                 ; v_02fa
  213a:  60 91 4e 04  lds r22, 0x044e                ; v_044e
  213e:  80 91 4a 04  lds r24, 0x044a                ; v_044a
  2142:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  2146:  97 fd        sbrc r25, 7                    
  2148:  e7 c1        rjmp L_2518                    ; -> 0x2518
  214a:  60 91 55 04  lds r22, 0x0455                ; v_0455
  214e:  80 91 51 04  lds r24, 0x0451                ; v_0451
  2152:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  2156:  97 fd        sbrc r25, 7                    
  2158:  df c1        rjmp L_2518                    ; -> 0x2518
  215a:  83 e0        ldi r24, 0x03                  
  215c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  215e:  90 93 79 03  sts 0x0379, r25                ; v_0379
  2162:  80 93 78 03  sts 0x0378, r24                ; v_0378
  2166:  83 e1        ldi r24, 0x13                  ; r25:r24 = 0x0013 (19)
  2168:  0e 94 ef 08  call F_11de                    ; -> 0x11de
  216c:  97 fd        sbrc r25, 7                    
  216e:  d4 c1        rjmp L_2518                    ; -> 0x2518
  2170:  10 92 7d 03  sts 0x037d, r1                 ; v_037d
  2174:  10 92 7e 03  sts 0x037e, r1                 ; v_037e
  2178:  10 92 7f 03  sts 0x037f, r1                 ; v_037f
  217c:  10 92 80 03  sts 0x0380, r1                 ; v_0380
  2180:  10 92 81 03  sts 0x0381, r1                 ; v_0381
  2184:  10 92 82 03  sts 0x0382, r1                 ; v_0382
  2188:  10 92 83 03  sts 0x0383, r1                 ; v_0383
  218c:  10 92 84 03  sts 0x0384, r1                 ; v_0384
  2190:  10 92 85 03  sts 0x0385, r1                 ; v_0385
  2194:  10 92 86 03  sts 0x0386, r1                 ; v_0386
  2198:  10 92 87 03  sts 0x0387, r1                 ; v_0387
  219c:  10 92 88 03  sts 0x0388, r1                 ; v_0388
  21a0:  d0 e0        ldi r29, 0x00                  
  21a2:  c0 e0        ldi r28, 0x00                  ; r29:r28 = 0x0000 (0)
L_21a4:
  21a4:  80 91 7b 03  lds r24, 0x037b                ; v_037b
  21a8:  90 91 7c 03  lds r25, 0x037c                ; v_037c
  21ac:  c8 17        cp r28, r24                    
  21ae:  d9 07        cpc r29, r25                   
  21b0:  08 f0        brcs L_21b4                    ; -> 0x21b4
  21b2:  8c c0        rjmp L_22cc                    ; -> 0x22cc
L_21b4:
  21b4:  0e 94 d6 04  call fnE_09ac                  ; -> 0x09ac
  21b8:  60 91 7b 03  lds r22, 0x037b                ; v_037b
  21bc:  70 91 7c 03  lds r23, 0x037c                ; v_037c
  21c0:  90 e0        ldi r25, 0x00                  
  21c2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  21c4:  0e 94 b1 14  call F_2962                    ; -> 0x2962
  21c8:  6b 01        movw r13:r12, r23:r22          
  21ca:  7c 01        movw r15:r14, r25:r24          
  21cc:  20 91 89 03  lds r18, 0x0389                ; v_0389
  21d0:  30 91 8a 03  lds r19, 0x038a                ; v_038a
  21d4:  40 91 8b 03  lds r20, 0x038b                ; v_038b
  21d8:  50 91 8c 03  lds r21, 0x038c                ; v_038c
  21dc:  60 91 3b 03  lds r22, 0x033b                ; v_033b
  21e0:  70 91 3c 03  lds r23, 0x033c                ; v_033c
  21e4:  80 91 3d 03  lds r24, 0x033d                ; v_033d
  21e8:  90 91 3e 03  lds r25, 0x033e                ; v_033e
  21ec:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  21f0:  a7 01        movw r21:r20, r15:r14          
  21f2:  96 01        movw r19:r18, r13:r12          
  21f4:  0e 94 10 14  call F_2820                    ; -> 0x2820
  21f8:  20 91 7d 03  lds r18, 0x037d                ; v_037d
  21fc:  30 91 7e 03  lds r19, 0x037e                ; v_037e
  2200:  40 91 7f 03  lds r20, 0x037f                ; v_037f
  2204:  50 91 80 03  lds r21, 0x0380                ; v_0380
  2208:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  220c:  60 93 7d 03  sts 0x037d, r22                ; v_037d
  2210:  70 93 7e 03  sts 0x037e, r23                ; v_037e
  2214:  80 93 7f 03  sts 0x037f, r24                ; v_037f
  2218:  90 93 80 03  sts 0x0380, r25                ; v_0380
  221c:  20 91 8d 03  lds r18, 0x038d                ; v_038d
  2220:  30 91 8e 03  lds r19, 0x038e                ; v_038e
  2224:  40 91 8f 03  lds r20, 0x038f                ; v_038f
  2228:  50 91 90 03  lds r21, 0x0390                ; v_0390
  222c:  60 91 3f 03  lds r22, 0x033f                ; v_033f
  2230:  70 91 40 03  lds r23, 0x0340                ; v_0340
  2234:  80 91 41 03  lds r24, 0x0341                ; v_0341
  2238:  90 91 42 03  lds r25, 0x0342                ; v_0342
  223c:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  2240:  a7 01        movw r21:r20, r15:r14          
  2242:  96 01        movw r19:r18, r13:r12          
  2244:  0e 94 10 14  call F_2820                    ; -> 0x2820
  2248:  20 91 81 03  lds r18, 0x0381                ; v_0381
  224c:  30 91 82 03  lds r19, 0x0382                ; v_0382
  2250:  40 91 83 03  lds r20, 0x0383                ; v_0383
  2254:  50 91 84 03  lds r21, 0x0384                ; v_0384
  2258:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  225c:  60 93 81 03  sts 0x0381, r22                ; v_0381
  2260:  70 93 82 03  sts 0x0382, r23                ; v_0382
  2264:  80 93 83 03  sts 0x0383, r24                ; v_0383
  2268:  90 93 84 03  sts 0x0384, r25                ; v_0384
  226c:  20 91 91 03  lds r18, 0x0391                ; v_0391
  2270:  30 91 92 03  lds r19, 0x0392                ; v_0392
  2274:  40 91 93 03  lds r20, 0x0393                ; v_0393
  2278:  50 91 94 03  lds r21, 0x0394                ; v_0394
  227c:  60 91 43 03  lds r22, 0x0343                ; v_0343
  2280:  70 91 44 03  lds r23, 0x0344                ; v_0344
  2284:  80 91 45 03  lds r24, 0x0345                ; v_0345
  2288:  90 91 46 03  lds r25, 0x0346                ; v_0346
  228c:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  2290:  a7 01        movw r21:r20, r15:r14          
  2292:  96 01        movw r19:r18, r13:r12          
  2294:  0e 94 10 14  call F_2820                    ; -> 0x2820
  2298:  20 91 85 03  lds r18, 0x0385                ; v_0385
  229c:  30 91 86 03  lds r19, 0x0386                ; v_0386
  22a0:  40 91 87 03  lds r20, 0x0387                ; v_0387
  22a4:  50 91 88 03  lds r21, 0x0388                ; v_0388
  22a8:  0e 94 9f 13  call F_273e                    ; -> 0x273e
  22ac:  60 93 85 03  sts 0x0385, r22                ; v_0385
  22b0:  70 93 86 03  sts 0x0386, r23                ; v_0386
  22b4:  80 93 87 03  sts 0x0387, r24                ; v_0387
  22b8:  90 93 88 03  sts 0x0388, r25                ; v_0388
  22bc:  64 e1        ldi r22, 0x14                  
  22be:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0014 (20)
  22c0:  80 e0        ldi r24, 0x00                  
  22c2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  22c4:  0e 94 83 02  call delay                     ; -> 0x0506
  22c8:  21 96        adiw r29:r28, 1                
  22ca:  6c cf        rjmp L_21a4                    ; -> 0x21a4
L_22cc:
  22cc:  80 91 7d 03  lds r24, 0x037d                ; v_037d
  22d0:  90 91 7e 03  lds r25, 0x037e                ; v_037e
  22d4:  a0 91 7f 03  lds r26, 0x037f                ; v_037f
  22d8:  b0 91 80 03  lds r27, 0x0380                ; v_0380
  22dc:  80 93 89 03  sts 0x0389, r24                ; v_0389
  22e0:  90 93 8a 03  sts 0x038a, r25                ; v_038a
  22e4:  a0 93 8b 03  sts 0x038b, r26                ; v_038b
  22e8:  b0 93 8c 03  sts 0x038c, r27                ; v_038c
  22ec:  80 91 81 03  lds r24, 0x0381                ; v_0381
  22f0:  90 91 82 03  lds r25, 0x0382                ; v_0382
  22f4:  a0 91 83 03  lds r26, 0x0383                ; v_0383
  22f8:  b0 91 84 03  lds r27, 0x0384                ; v_0384
  22fc:  80 93 8d 03  sts 0x038d, r24                ; v_038d
  2300:  90 93 8e 03  sts 0x038e, r25                ; v_038e
  2304:  a0 93 8f 03  sts 0x038f, r26                ; v_038f
  2308:  b0 93 90 03  sts 0x0390, r27                ; v_0390
  230c:  80 91 85 03  lds r24, 0x0385                ; v_0385
  2310:  90 91 86 03  lds r25, 0x0386                ; v_0386
  2314:  a0 91 87 03  lds r26, 0x0387                ; v_0387
  2318:  b0 91 88 03  lds r27, 0x0388                ; v_0388
  231c:  80 93 91 03  sts 0x0391, r24                ; v_0391
  2320:  90 93 92 03  sts 0x0392, r25                ; v_0392
  2324:  a0 93 93 03  sts 0x0393, r26                ; v_0393
  2328:  b0 93 94 03  sts 0x0394, r27                ; v_0394
  232c:  c0 91 76 03  lds r28, 0x0376                ; v_0376
  2330:  d0 91 77 03  lds r29, 0x0377                ; v_0377
  2334:  10 92 fa 02  sts 0x02fa, r1                 ; v_02fa
  2338:  c1 30        cpi r28, 0x01                  
  233a:  d1 05        cpc r29, r1                    
  233c:  09 f4        brne L_2340                    ; -> 0x2340
  233e:  1f c1        rjmp L_257e                    ; -> 0x257e
L_2340:
  2340:  08 f4        brcc L_2344                    ; -> 0x2344
  2342:  de c0        rjmp L_2500                    ; -> 0x2500
L_2344:
  2344:  c2 30        cpi r28, 0x02                  
  2346:  d1 05        cpc r29, r1                    
  2348:  09 f4        brne L_234c                    ; -> 0x234c
  234a:  38 c1        rjmp L_25bc                    ; -> 0x25bc
L_234c:
  234c:  c3 30        cpi r28, 0x03                  
  234e:  d1 05        cpc r29, r1                    
  2350:  09 f4        brne L_2354                    ; -> 0x2354
  2352:  41 c1        rjmp L_25d6                    ; -> 0x25d6
L_2354:
  2354:  d0 93 77 03  sts 0x0377, r29                ; v_0377
  2358:  c0 93 76 03  sts 0x0376, r28                ; v_0376
  235c:  c0 91 78 03  lds r28, 0x0378                ; v_0378
  2360:  d0 91 79 03  lds r29, 0x0379                ; v_0379
  2364:  10 92 fa 02  sts 0x02fa, r1                 ; v_02fa
  2368:  c2 30        cpi r28, 0x02                  
  236a:  d1 05        cpc r29, r1                    
  236c:  09 f4        brne L_2370                    ; -> 0x2370
  236e:  70 c1        rjmp L_2650                    ; -> 0x2650
L_2370:
  2370:  08 f0        brcs L_2374                    ; -> 0x2374
  2372:  3e c1        rjmp L_25f0                    ; -> 0x25f0
L_2374:
  2374:  20 97        sbiw r29:r28, 0                
  2376:  09 f4        brne L_237a                    ; -> 0x237a
  2378:  4f c1        rjmp L_2618                    ; -> 0x2618
L_237a:
  237a:  c1 30        cpi r28, 0x01                  
  237c:  d1 05        cpc r29, r1                    
  237e:  09 f4        brne L_2382                    ; -> 0x2382
  2380:  5c c1        rjmp L_263a                    ; -> 0x263a
L_2382:
  2382:  d0 93 79 03  sts 0x0379, r29                ; v_0379
  2386:  c0 93 78 03  sts 0x0378, r28                ; v_0378
  238a:  80 91 7a 03  lds r24, 0x037a                ; v_037a
  238e:  0e 94 ef 08  call F_11de                    ; -> 0x11de
  2392:  97 fd        sbrc r25, 7                    
  2394:  c1 c0        rjmp L_2518                    ; -> 0x2518
  2396:  81 e0        ldi r24, 0x01                  
  2398:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  239a:  90 93 d6 01  sts 0x01d6, r25                ; v_01d6
  239e:  80 93 d5 01  sts 0x01d5, r24                ; v_01d5
  23a2:  c0 e0        ldi r28, 0x00                  
  23a4:  d0 e0        ldi r29, 0x00                  ; r29:r28 = 0x0000 (0)
L_23a6:
  23a6:  0e 94 d6 04  call fnE_09ac                  ; -> 0x09ac
  23aa:  60 91 2f 03  lds r22, 0x032f                ; v_032f
  23ae:  70 91 30 03  lds r23, 0x0330                ; v_0330
  23b2:  80 91 31 03  lds r24, 0x0331                ; v_0331
  23b6:  90 91 32 03  lds r25, 0x0332                ; v_0332
  23ba:  46 e0        ldi r20, 0x06                  
  23bc:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  23c0:  82 e8        ldi r24, 0x82                  
  23c2:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0182 (386)
  23c4:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  23c8:  60 91 33 03  lds r22, 0x0333                ; v_0333
  23cc:  70 91 34 03  lds r23, 0x0334                ; v_0334
  23d0:  80 91 35 03  lds r24, 0x0335                ; v_0335
  23d4:  90 91 36 03  lds r25, 0x0336                ; v_0336
  23d8:  46 e0        ldi r20, 0x06                  
  23da:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  23de:  82 e8        ldi r24, 0x82                  
  23e0:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0182 (386)
  23e2:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  23e6:  60 91 37 03  lds r22, 0x0337                ; v_0337
  23ea:  70 91 38 03  lds r23, 0x0338                ; v_0338
  23ee:  80 91 39 03  lds r24, 0x0339                ; v_0339
  23f2:  90 91 3a 03  lds r25, 0x033a                ; v_033a
  23f6:  46 e0        ldi r20, 0x06                  
  23f8:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  23fc:  82 e8        ldi r24, 0x82                  
  23fe:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0182 (386)
  2400:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  2404:  60 91 3b 03  lds r22, 0x033b                ; v_033b
  2408:  70 91 3c 03  lds r23, 0x033c                ; v_033c
  240c:  80 91 3d 03  lds r24, 0x033d                ; v_033d
  2410:  90 91 3e 03  lds r25, 0x033e                ; v_033e
  2414:  46 e0        ldi r20, 0x06                  
  2416:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  241a:  82 e8        ldi r24, 0x82                  
  241c:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0182 (386)
  241e:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  2422:  60 91 3f 03  lds r22, 0x033f                ; v_033f
  2426:  70 91 40 03  lds r23, 0x0340                ; v_0340
  242a:  80 91 41 03  lds r24, 0x0341                ; v_0341
  242e:  90 91 42 03  lds r25, 0x0342                ; v_0342
  2432:  46 e0        ldi r20, 0x06                  
  2434:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  2438:  82 e8        ldi r24, 0x82                  
  243a:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0182 (386)
  243c:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  2440:  60 91 43 03  lds r22, 0x0343                ; v_0343
  2444:  70 91 44 03  lds r23, 0x0344                ; v_0344
  2448:  80 91 45 03  lds r24, 0x0345                ; v_0345
  244c:  90 91 46 03  lds r25, 0x0346                ; v_0346
  2450:  46 e0        ldi r20, 0x06                  
  2452:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  2456:  82 e8        ldi r24, 0x82                  
  2458:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0182 (386)
  245a:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  245e:  60 91 47 03  lds r22, 0x0347                ; v_0347
  2462:  70 91 48 03  lds r23, 0x0348                ; v_0348
  2466:  80 91 49 03  lds r24, 0x0349                ; v_0349
  246a:  90 91 4a 03  lds r25, 0x034a                ; v_034a
  246e:  46 e0        ldi r20, 0x06                  
  2470:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  2474:  82 e8        ldi r24, 0x82                  
  2476:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0182 (386)
  2478:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  247c:  60 91 4b 03  lds r22, 0x034b                ; v_034b
  2480:  70 91 4c 03  lds r23, 0x034c                ; v_034c
  2484:  80 91 4d 03  lds r24, 0x034d                ; v_034d
  2488:  90 91 4e 03  lds r25, 0x034e                ; v_034e
  248c:  46 e0        ldi r20, 0x06                  
  248e:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  2492:  82 e8        ldi r24, 0x82                  
  2494:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0182 (386)
  2496:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  249a:  60 91 4f 03  lds r22, 0x034f                ; v_034f
  249e:  70 91 50 03  lds r23, 0x0350                ; v_0350
  24a2:  80 91 51 03  lds r24, 0x0351                ; v_0351
  24a6:  90 91 52 03  lds r25, 0x0352                ; v_0352
  24aa:  46 e0        ldi r20, 0x06                  
  24ac:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  24b0:  84 e2        ldi r24, 0x24                  
  24b2:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0124 (292)
  24b4:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  24b8:  82 e8        ldi r24, 0x82                  ; r25:r24 = 0x0182 (386)
  24ba:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0182 (386)
  24bc:  0e 94 cb 03  call F_0796                    ; -> 0x0796
  24c0:  60 91 53 03  lds r22, 0x0353                ; v_0353
  24c4:  70 91 54 03  lds r23, 0x0354                ; v_0354
  24c8:  80 91 55 03  lds r24, 0x0355                ; v_0355
  24cc:  90 91 56 03  lds r25, 0x0356                ; v_0356
  24d0:  46 e0        ldi r20, 0x06                  
  24d2:  0e 94 45 09  call fnG_128a                  ; -> 0x128a
  24d6:  84 e2        ldi r24, 0x24                  
  24d8:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0124 (292)
  24da:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  24de:  68 ee        ldi r22, 0xe8                  
  24e0:  73 e0        ldi r23, 0x03                  ; r23:r22 = 0x03e8 (1000)
  24e2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0100 (256)
  24e4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  24e6:  0e 94 83 02  call delay                     ; -> 0x0506
  24ea:  20 97        sbiw r29:r28, 0                
  24ec:  09 f4        brne L_24f0                    ; -> 0x24f0
  24ee:  5b cf        rjmp L_23a6                    ; -> 0x23a6
L_24f0:
  24f0:  0e 94 6f 01  call F_02de                    ; -> 0x02de
  24f4:  88 23        tst r24                        
  24f6:  09 f4        brne L_24fa                    ; -> 0x24fa
  24f8:  56 cf        rjmp L_23a6                    ; -> 0x23a6
L_24fa:
  24fa:  0e 94 00 00  call F_0000                    ; -> 0x0000
  24fe:  53 cf        rjmp L_23a6                    ; -> 0x23a6
L_2500:
  2500:  60 91 46 04  lds r22, 0x0446                ; v_0446
  2504:  80 91 45 04  lds r24, 0x0445                ; v_0445
  2508:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  250c:  2a ef        ldi r18, 0xfa                  
  250e:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00fa (250)
  2510:  4a ef        ldi r20, 0xfa                  
  2512:  5b e3        ldi r21, 0x3b                  ; r21:r20 = 0x3bfa (15354)
  2514:  97 ff        sbrs r25, 7                    
  2516:  3f c0        rjmp L_2596                    ; -> 0x2596
L_2518:
  2518:  8c ee        ldi r24, 0xec                  
  251a:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffec (65516)
L_251c:
  251c:  90 93 d6 01  sts 0x01d6, r25                ; v_01d6
  2520:  80 93 d5 01  sts 0x01d5, r24                ; v_01d5
  2524:  83 e3        ldi r24, 0x33                  ; r25:r24 = 0xff33 (65331)
  2526:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0133 (307)
  2528:  0e 94 cb 03  call F_0796                    ; -> 0x0796
  252c:  83 e5        ldi r24, 0x53                  ; r25:r24 = 0x0153 (339)
  252e:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0153 (339)
  2530:  0e 94 cb 03  call F_0796                    ; -> 0x0796
  2534:  89 e7        ldi r24, 0x79                  ; r25:r24 = 0x0179 (377)
  2536:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0179 (377)
  2538:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
  253c:  c0 90 d5 01  lds r12, 0x01d5                ; v_01d5
  2540:  d0 90 d6 01  lds r13, 0x01d6                ; v_01d6
  2544:  0d 2c        mov r0, r13                    
  2546:  00 0c        lsl r0                         
  2548:  ee 08        sbc r14, r14                   
  254a:  ff 08        sbc r15, r15                   
  254c:  4a e0        ldi r20, 0x0a                  
  254e:  c7 01        movw r25:r24, r15:r14          
  2550:  b6 01        movw r23:r22, r13:r12          
  2552:  f7 fe        sbrs r15, 7                    
  2554:  0d c0        rjmp L_2570                    ; -> 0x2570
  2556:  6d e2        ldi r22, 0x2d                  
  2558:  84 e4        ldi r24, 0x44                  
  255a:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0244 (580)
  255c:  0e 94 a5 01  call F_034a                    ; -> 0x034a
  2560:  66 27        clr r22                        
  2562:  77 27        clr r23                        
  2564:  cb 01        movw r25:r24, r23:r22          
  2566:  6c 19        sub r22, r12                   
  2568:  7d 09        sbc r23, r13                   
  256a:  8e 09        sbc r24, r14                   
  256c:  9f 09        sbc r25, r15                   
  256e:  4a e0        ldi r20, 0x0a                  
L_2570:
  2570:  0e 94 87 03  call F_070e                    ; -> 0x070e
  2574:  84 e2        ldi r24, 0x24                  
  2576:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x0124 (292)
  2578:  0e 94 7a 03  call F_06f4                    ; -> 0x06f4
L_257c:
  257c:  ff cf        rjmp L_257c                    ; -> 0x257c
L_257e:
  257e:  60 91 47 04  lds r22, 0x0447                ; v_0447
  2582:  80 91 45 04  lds r24, 0x0445                ; v_0445
  2586:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  258a:  2a ef        ldi r18, 0xfa                  
  258c:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00fa (250)
  258e:  4a e7        ldi r20, 0x7a                  
  2590:  5c e3        ldi r21, 0x3c                  ; r21:r20 = 0x3c7a (15482)
  2592:  97 fd        sbrc r25, 7                    
  2594:  c1 cf        rjmp L_2518                    ; -> 0x2518
L_2596:
  2596:  60 91 38 04  lds r22, 0x0438                ; v_0438
  259a:  70 91 39 04  lds r23, 0x0439                ; v_0439
  259e:  80 91 3a 04  lds r24, 0x043a                ; v_043a
  25a2:  90 91 3b 04  lds r25, 0x043b                ; v_043b
  25a6:  0e 94 68 15  call F_2ad0                    ; -> 0x2ad0
  25aa:  60 93 5c 03  sts 0x035c, r22                ; v_035c
  25ae:  70 93 5d 03  sts 0x035d, r23                ; v_035d
  25b2:  80 93 5e 03  sts 0x035e, r24                ; v_035e
  25b6:  90 93 5f 03  sts 0x035f, r25                ; v_035f
  25ba:  cc ce        rjmp L_2354                    ; -> 0x2354
L_25bc:
  25bc:  60 91 48 04  lds r22, 0x0448                ; v_0448
  25c0:  80 91 45 04  lds r24, 0x0445                ; v_0445
  25c4:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  25c8:  2a ef        ldi r18, 0xfa                  
  25ca:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00fa (250)
  25cc:  4a ef        ldi r20, 0xfa                  
  25ce:  5c e3        ldi r21, 0x3c                  ; r21:r20 = 0x3cfa (15610)
  25d0:  97 ff        sbrs r25, 7                    
  25d2:  e1 cf        rjmp L_2596                    ; -> 0x2596
  25d4:  a1 cf        rjmp L_2518                    ; -> 0x2518
L_25d6:
  25d6:  60 91 49 04  lds r22, 0x0449                ; v_0449
  25da:  80 91 45 04  lds r24, 0x0445                ; v_0445
  25de:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  25e2:  97 fd        sbrc r25, 7                    
  25e4:  99 cf        rjmp L_2518                    ; -> 0x2518
  25e6:  2a ef        ldi r18, 0xfa                  
  25e8:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00fa (250)
  25ea:  4a e7        ldi r20, 0x7a                  
  25ec:  5d e3        ldi r21, 0x3d                  ; r21:r20 = 0x3d7a (15738)
  25ee:  d3 cf        rjmp L_2596                    ; -> 0x2596
L_25f0:
  25f0:  c4 30        cpi r28, 0x04                  
  25f2:  d1 05        cpc r29, r1                    
  25f4:  09 f4        brne L_25f8                    ; -> 0x25f8
  25f6:  42 c0        rjmp L_267c                    ; -> 0x267c
L_25f8:
  25f8:  b0 f1        brcs L_2666                    ; -> 0x2666
  25fa:  c5 30        cpi r28, 0x05                  
  25fc:  d1 05        cpc r29, r1                    
  25fe:  09 f0        breq L_2602                    ; -> 0x2602
  2600:  c0 ce        rjmp L_2382                    ; -> 0x2382
L_2602:
  2602:  60 91 50 04  lds r22, 0x0450                ; v_0450
  2606:  80 91 4a 04  lds r24, 0x044a                ; v_044a
  260a:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  260e:  97 fd        sbrc r25, 7                    
  2610:  83 cf        rjmp L_2518                    ; -> 0x2518
  2612:  60 91 57 04  lds r22, 0x0457                ; v_0457
  2616:  0a c0        rjmp L_262c                    ; -> 0x262c
L_2618:
  2618:  60 91 4b 04  lds r22, 0x044b                ; v_044b
  261c:  80 91 4a 04  lds r24, 0x044a                ; v_044a
  2620:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  2624:  60 91 52 04  lds r22, 0x0452                ; v_0452
  2628:  97 fd        sbrc r25, 7                    
  262a:  76 cf        rjmp L_2518                    ; -> 0x2518
L_262c:
  262c:  80 91 51 04  lds r24, 0x0451                ; v_0451
  2630:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  2634:  97 fd        sbrc r25, 7                    
  2636:  70 cf        rjmp L_2518                    ; -> 0x2518
  2638:  a4 ce        rjmp L_2382                    ; -> 0x2382
L_263a:
  263a:  60 91 4c 04  lds r22, 0x044c                ; v_044c
  263e:  80 91 4a 04  lds r24, 0x044a                ; v_044a
  2642:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  2646:  60 91 53 04  lds r22, 0x0453                ; v_0453
  264a:  97 ff        sbrs r25, 7                    
  264c:  ef cf        rjmp L_262c                    ; -> 0x262c
  264e:  64 cf        rjmp L_2518                    ; -> 0x2518
L_2650:
  2650:  60 91 4d 04  lds r22, 0x044d                ; v_044d
  2654:  80 91 4a 04  lds r24, 0x044a                ; v_044a
  2658:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  265c:  60 91 54 04  lds r22, 0x0454                ; v_0454
  2660:  97 ff        sbrs r25, 7                    
  2662:  e4 cf        rjmp L_262c                    ; -> 0x262c
  2664:  59 cf        rjmp L_2518                    ; -> 0x2518
L_2666:
  2666:  60 91 4e 04  lds r22, 0x044e                ; v_044e
  266a:  80 91 4a 04  lds r24, 0x044a                ; v_044a
  266e:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  2672:  60 91 55 04  lds r22, 0x0455                ; v_0455
  2676:  97 ff        sbrs r25, 7                    
  2678:  d9 cf        rjmp L_262c                    ; -> 0x262c
  267a:  4e cf        rjmp L_2518                    ; -> 0x2518
L_267c:
  267c:  60 91 4f 04  lds r22, 0x044f                ; v_044f
  2680:  80 91 4a 04  lds r24, 0x044a                ; v_044a
  2684:  0e 94 f9 07  call fnF_0ff2                  ; -> 0x0ff2
  2688:  60 91 56 04  lds r22, 0x0456                ; v_0456
  268c:  97 ff        sbrs r25, 7                    
  268e:  ce cf        rjmp L_262c                    ; -> 0x262c
  2690:  43 cf        rjmp L_2518                    ; -> 0x2518
L_2692:
  2692:  8d ee        ldi r24, 0xed                  
  2694:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffed (65517)
  2696:  42 cf        rjmp L_251c                    ; -> 0x251c
L_2698:
  2698:  8e ee        ldi r24, 0xee                  ; r25:r24 = 0xffee (65518)
  269a:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffee (65518)
  269c:  3f cf        rjmp L_251c                    ; -> 0x251c
L_269e:
  269e:  8f ee        ldi r24, 0xef                  ; r25:r24 = 0xffef (65519)
  26a0:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffef (65519)
  26a2:  3c cf        rjmp L_251c                    ; -> 0x251c
L_26a4:
  26a4:  80 ef        ldi r24, 0xf0                  ; r25:r24 = 0xfff0 (65520)
  26a6:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff0 (65520)
  26a8:  39 cf        rjmp L_251c                    ; -> 0x251c
L_26aa:
  26aa:  81 ef        ldi r24, 0xf1                  ; r25:r24 = 0xfff1 (65521)
  26ac:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff1 (65521)
  26ae:  36 cf        rjmp L_251c                    ; -> 0x251c
L_26b0:
  26b0:  82 ef        ldi r24, 0xf2                  ; r25:r24 = 0xfff2 (65522)
  26b2:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff2 (65522)
  26b4:  33 cf        rjmp L_251c                    ; -> 0x251c
L_26b6:
  26b6:  83 ef        ldi r24, 0xf3                  ; r25:r24 = 0xfff3 (65523)
  26b8:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff3 (65523)
  26ba:  30 cf        rjmp L_251c                    ; -> 0x251c
L_26bc:
  26bc:  84 ef        ldi r24, 0xf4                  ; r25:r24 = 0xfff4 (65524)
  26be:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff4 (65524)
  26c0:  2d cf        rjmp L_251c                    ; -> 0x251c
L_26c2:
  26c2:  85 ef        ldi r24, 0xf5                  ; r25:r24 = 0xfff5 (65525)
  26c4:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff5 (65525)
  26c6:  2a cf        rjmp L_251c                    ; -> 0x251c
L_26c8:
  26c8:  86 ef        ldi r24, 0xf6                  ; r25:r24 = 0xfff6 (65526)
  26ca:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff6 (65526)
  26cc:  27 cf        rjmp L_251c                    ; -> 0x251c
L_26ce:
  26ce:  87 ef        ldi r24, 0xf7                  ; r25:r24 = 0xfff7 (65527)
  26d0:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff7 (65527)
  26d2:  24 cf        rjmp L_251c                    ; -> 0x251c
L_26d4:
  26d4:  88 ef        ldi r24, 0xf8                  ; r25:r24 = 0xfff8 (65528)
  26d6:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff8 (65528)
  26d8:  21 cf        rjmp L_251c                    ; -> 0x251c
L_26da:
  26da:  89 ef        ldi r24, 0xf9                  ; r25:r24 = 0xfff9 (65529)
  26dc:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfff9 (65529)
  26de:  1e cf        rjmp L_251c                    ; -> 0x251c
L_26e0:
  26e0:  8c ef        ldi r24, 0xfc                  ; r25:r24 = 0xfffc (65532)
  26e2:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffc (65532)
  26e4:  1b cf        rjmp L_251c                    ; -> 0x251c
L_26e6:
  26e6:  8d ef        ldi r24, 0xfd                  ; r25:r24 = 0xfffd (65533)
  26e8:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffd (65533)
  26ea:  18 cf        rjmp L_251c                    ; -> 0x251c
L_26ec:
  26ec:  8e ef        ldi r24, 0xfe                  ; r25:r24 = 0xfffe (65534)
  26ee:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xfffe (65534)
  26f0:  15 cf        rjmp L_251c                    ; -> 0x251c
L_26f2:
  26f2:  8f ef        ldi r24, 0xff                  ; r25:r24 = 0xffff (65535)
  26f4:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  26f6:  12 cf        rjmp L_251c                    ; -> 0x251c

; ===== F_26f8 =====
F_26f8:
  26f8:  a1 e2        ldi r26, 0x21                  
  26fa:  1a 2e        mov r1, r26                    
  26fc:  aa 1b        sub r26, r26                   
  26fe:  bb 1b        sub r27, r27                   
  2700:  fd 01        movw r31:r30, r27:r26          
  2702:  0d c0        rjmp L_271e                    ; -> 0x271e
L_2704:
  2704:  aa 1f        rol r26                        
  2706:  bb 1f        rol r27                        
  2708:  ee 1f        rol r30                        
  270a:  ff 1f        rol r31                        
  270c:  a2 17        cp r26, r18                    
  270e:  b3 07        cpc r27, r19                   
  2710:  e4 07        cpc r30, r20                   
  2712:  f5 07        cpc r31, r21                   
  2714:  20 f0        brcs L_271e                    ; -> 0x271e
  2716:  a2 1b        sub r26, r18                   
  2718:  b3 0b        sbc r27, r19                   
  271a:  e4 0b        sbc r30, r20                   
  271c:  f5 0b        sbc r31, r21                   
L_271e:
  271e:  66 1f        rol r22                        
  2720:  77 1f        rol r23                        
  2722:  88 1f        rol r24                        
  2724:  99 1f        rol r25                        
  2726:  1a 94        dec r1                         
  2728:  69 f7        brne L_2704                    ; -> 0x2704
  272a:  60 95        com r22                        
  272c:  70 95        com r23                        
  272e:  80 95        com r24                        
  2730:  90 95        com r25                        
  2732:  9b 01        movw r19:r18, r23:r22          
  2734:  ac 01        movw r21:r20, r25:r24          
  2736:  bd 01        movw r23:r22, r27:r26          
  2738:  cf 01        movw r25:r24, r31:r30          
  273a:  08 95        ret                            

; ===== F_273c =====
F_273c:
  273c:  50 58        subi r21, 0x80                 

; ===== F_273e =====
F_273e:
  273e:  bb 27        clr r27                        
  2740:  aa 27        clr r26                        
  2742:  0e 94 b6 13  call F_276c                    ; -> 0x276c
  2746:  0c 94 29 15  jmp L_2a52                     ; -> 0x2a52
L_274a:
  274a:  0e 94 1b 15  call F_2a36                    ; -> 0x2a36
  274e:  38 f0        brcs L_275e                    ; -> 0x275e
  2750:  0e 94 22 15  call F_2a44                    ; -> 0x2a44
  2754:  20 f0        brcs L_275e                    ; -> 0x275e
  2756:  39 f4        brne L_2766                    ; -> 0x2766
  2758:  9f 3f        cpi r25, 0xff                  
  275a:  19 f4        brne L_2762                    ; -> 0x2762
  275c:  26 f4        brtc L_2766                    ; -> 0x2766
L_275e:
  275e:  0c 94 18 15  jmp L_2a30                     ; -> 0x2a30
L_2762:
  2762:  0e f4        brtc L_2766                    ; -> 0x2766
  2764:  e0 95        com r30                        
L_2766:
  2766:  e7 fb        bst r30, 7                     
  2768:  0c 94 12 15  jmp L_2a24                     ; -> 0x2a24

; ===== F_276c =====
F_276c:
  276c:  e9 2f        mov r30, r25                   
  276e:  0e 94 3a 15  call F_2a74                    ; -> 0x2a74
  2772:  58 f3        brcs L_274a                    ; -> 0x274a
  2774:  ba 17        cp r27, r26                    
  2776:  62 07        cpc r22, r18                   
  2778:  73 07        cpc r23, r19                   
  277a:  84 07        cpc r24, r20                   
  277c:  95 07        cpc r25, r21                   
  277e:  20 f0        brcs L_2788                    ; -> 0x2788
  2780:  79 f4        brne L_27a0                    ; -> 0x27a0
  2782:  a6 f5        brtc L_27ec                    ; -> 0x27ec
  2784:  0c 94 5c 15  jmp F_2ab8                     ; -> 0x2ab8
L_2788:
  2788:  0e f4        brtc L_278c                    ; -> 0x278c
  278a:  e0 95        com r30                        
L_278c:
  278c:  0b 2e        mov r0, r27                    
  278e:  ba 2f        mov r27, r26                   
  2790:  a0 2d        mov r26, r0                    
  2792:  0b 01        movw r1:r0, r23:r22            
  2794:  b9 01        movw r23:r22, r19:r18          
  2796:  90 01        movw r19:r18, r1:r0            
  2798:  0c 01        movw r1:r0, r25:r24            
  279a:  ca 01        movw r25:r24, r21:r20          
  279c:  a0 01        movw r21:r20, r1:r0            
  279e:  11 24        clr r1                         
L_27a0:
  27a0:  ff 27        clr r31                        
  27a2:  59 1b        sub r21, r25                   
L_27a4:
  27a4:  99 f0        breq L_27cc                    ; -> 0x27cc
  27a6:  59 3f        cpi r21, 0xf9                  
  27a8:  50 f4        brcc L_27be                    ; -> 0x27be
  27aa:  50 3e        cpi r21, 0xe0                  
  27ac:  68 f1        brcs L_2808                    ; -> 0x2808
  27ae:  1a 16        cp r1, r26                     
  27b0:  f0 40        sbci r31, 0x00                 
  27b2:  a2 2f        mov r26, r18                   
  27b4:  23 2f        mov r18, r19                   
  27b6:  34 2f        mov r19, r20                   
  27b8:  44 27        clr r20                        
  27ba:  58 5f        subi r21, 0xf8                 
  27bc:  f3 cf        rjmp L_27a4                    ; -> 0x27a4
L_27be:
  27be:  46 95        lsr r20                        
  27c0:  37 95        ror r19                        
  27c2:  27 95        ror r18                        
  27c4:  a7 95        ror r26                        
  27c6:  f0 40        sbci r31, 0x00                 
  27c8:  53 95        inc r21                        
  27ca:  c9 f7        brne L_27be                    ; -> 0x27be
L_27cc:
  27cc:  7e f4        brtc L_27ec                    ; -> 0x27ec
  27ce:  1f 16        cp r1, r31                     
  27d0:  ba 0b        sbc r27, r26                   
  27d2:  62 0b        sbc r22, r18                   
  27d4:  73 0b        sbc r23, r19                   
  27d6:  84 0b        sbc r24, r20                   
  27d8:  ba f0        brmi L_2808                    ; -> 0x2808
L_27da:
  27da:  91 50        subi r25, 0x01                 
  27dc:  a1 f0        breq L_2806                    ; -> 0x2806
  27de:  ff 0f        lsl r31                        
  27e0:  bb 1f        rol r27                        
  27e2:  66 1f        rol r22                        
  27e4:  77 1f        rol r23                        
  27e6:  88 1f        rol r24                        
  27e8:  c2 f7        brpl L_27da                    ; -> 0x27da
  27ea:  0e c0        rjmp L_2808                    ; -> 0x2808
L_27ec:
  27ec:  ba 0f        add r27, r26                   
  27ee:  62 1f        adc r22, r18                   
  27f0:  73 1f        adc r23, r19                   
  27f2:  84 1f        adc r24, r20                   
  27f4:  48 f4        brcc L_2808                    ; -> 0x2808
  27f6:  87 95        ror r24                        
  27f8:  77 95        ror r23                        
  27fa:  67 95        ror r22                        
  27fc:  b7 95        ror r27                        
  27fe:  f7 95        ror r31                        
  2800:  9e 3f        cpi r25, 0xfe                  
  2802:  08 f0        brcs L_2806                    ; -> 0x2806
  2804:  b0 cf        rjmp L_2766                    ; -> 0x2766
L_2806:
  2806:  93 95        inc r25                        
L_2808:
  2808:  88 0f        lsl r24                        
  280a:  08 f0        brcs L_280e                    ; -> 0x280e
  280c:  99 27        clr r25                        
L_280e:
  280e:  ee 0f        lsl r30                        
  2810:  97 95        ror r25                        
  2812:  87 95        ror r24                        
  2814:  08 95        ret                            

; ===== F_2816 =====
F_2816:
  2816:  0e 94 ee 14  call F_29dc                    ; -> 0x29dc
  281a:  08 f4        brcc L_281e                    ; -> 0x281e
  281c:  81 e0        ldi r24, 0x01                  
L_281e:
  281e:  08 95        ret                            

; ===== F_2820 =====
F_2820:
  2820:  0e 94 24 14  call F_2848                    ; -> 0x2848
  2824:  0c 94 29 15  jmp L_2a52                     ; -> 0x2a52
L_2828:
  2828:  0e 94 22 15  call F_2a44                    ; -> 0x2a44
  282c:  58 f0        brcs L_2844                    ; -> 0x2844
  282e:  0e 94 1b 15  call F_2a36                    ; -> 0x2a36
  2832:  40 f0        brcs L_2844                    ; -> 0x2844
  2834:  29 f4        brne L_2840                    ; -> 0x2840
  2836:  5f 3f        cpi r21, 0xff                  
  2838:  29 f0        breq L_2844                    ; -> 0x2844
L_283a:
  283a:  0c 94 12 15  jmp L_2a24                     ; -> 0x2a24
L_283e:
  283e:  51 11        cpse r21, r1                   
L_2840:
  2840:  0c 94 5d 15  jmp L_2aba                     ; -> 0x2aba
L_2844:
  2844:  0c 94 18 15  jmp L_2a30                     ; -> 0x2a30

; ===== F_2848 =====
F_2848:
  2848:  0e 94 3a 15  call F_2a74                    ; -> 0x2a74
  284c:  68 f3        brcs L_2828                    ; -> 0x2828
  284e:  99 23        tst r25                        
  2850:  b1 f3        breq L_283e                    ; -> 0x283e
  2852:  55 23        tst r21                        
  2854:  91 f3        breq L_283a                    ; -> 0x283a
  2856:  95 1b        sub r25, r21                   
  2858:  55 0b        sbc r21, r21                   
  285a:  bb 27        clr r27                        
  285c:  aa 27        clr r26                        
L_285e:
  285e:  62 17        cp r22, r18                    
  2860:  73 07        cpc r23, r19                   
  2862:  84 07        cpc r24, r20                   
  2864:  38 f0        brcs L_2874                    ; -> 0x2874
  2866:  9f 5f        subi r25, 0xff                 
  2868:  5f 4f        sbci r21, 0xff                 
  286a:  22 0f        lsl r18                        
  286c:  33 1f        rol r19                        
  286e:  44 1f        rol r20                        
  2870:  aa 1f        rol r26                        
  2872:  a9 f3        breq L_285e                    ; -> 0x285e
L_2874:
  2874:  35 d0        rcall F_28e0                   ; -> 0x28e0
  2876:  0e 2e        mov r0, r30                    
  2878:  3a f0        brmi L_2888                    ; -> 0x2888
L_287a:
  287a:  e0 e8        ldi r30, 0x80                  
  287c:  32 d0        rcall F_28e2                   ; -> 0x28e2
  287e:  91 50        subi r25, 0x01                 
  2880:  50 40        sbci r21, 0x00                 
  2882:  e6 95        lsr r30                        
  2884:  00 1c        rol r0                         
  2886:  ca f7        brpl L_287a                    ; -> 0x287a
L_2888:
  2888:  2b d0        rcall F_28e0                   ; -> 0x28e0
  288a:  fe 2f        mov r31, r30                   
  288c:  29 d0        rcall F_28e0                   ; -> 0x28e0
  288e:  66 0f        lsl r22                        
  2890:  77 1f        rol r23                        
  2892:  88 1f        rol r24                        
  2894:  bb 1f        rol r27                        
  2896:  26 17        cp r18, r22                    
  2898:  37 07        cpc r19, r23                   
  289a:  48 07        cpc r20, r24                   
  289c:  ab 07        cpc r26, r27                   
  289e:  b0 e8        ldi r27, 0x80                  
  28a0:  09 f0        breq L_28a4                    ; -> 0x28a4
  28a2:  bb 0b        sbc r27, r27                   
L_28a4:
  28a4:  80 2d        mov r24, r0                    
  28a6:  bf 01        movw r23:r22, r31:r30          
  28a8:  ff 27        clr r31                        
  28aa:  93 58        subi r25, 0x83                 
  28ac:  5f 4f        sbci r21, 0xff                 
  28ae:  3a f0        brmi L_28be                    ; -> 0x28be
  28b0:  9e 3f        cpi r25, 0xfe                  
  28b2:  51 05        cpc r21, r1                    
  28b4:  78 f0        brcs L_28d4                    ; -> 0x28d4
  28b6:  0c 94 12 15  jmp L_2a24                     ; -> 0x2a24
L_28ba:
  28ba:  0c 94 5d 15  jmp L_2aba                     ; -> 0x2aba
L_28be:
  28be:  5f 3f        cpi r21, 0xff                  
  28c0:  e4 f3        brlt L_28ba                    ; -> 0x28ba
  28c2:  98 3e        cpi r25, 0xe8                  
  28c4:  d4 f3        brlt L_28ba                    ; -> 0x28ba
L_28c6:
  28c6:  86 95        lsr r24                        
  28c8:  77 95        ror r23                        
  28ca:  67 95        ror r22                        
  28cc:  b7 95        ror r27                        
  28ce:  f7 95        ror r31                        
  28d0:  9f 5f        subi r25, 0xff                 
  28d2:  c9 f7        brne L_28c6                    ; -> 0x28c6
L_28d4:
  28d4:  88 0f        lsl r24                        
  28d6:  91 1d        adc r25, r1                    
  28d8:  96 95        lsr r25                        
  28da:  87 95        ror r24                        
  28dc:  97 f9        bld r25, 7                     
  28de:  08 95        ret                            

; ===== F_28e0 =====
F_28e0:
  28e0:  e1 e0        ldi r30, 0x01                  

; ===== F_28e2 =====
F_28e2:
  28e2:  66 0f        lsl r22                        
  28e4:  77 1f        rol r23                        
  28e6:  88 1f        rol r24                        
  28e8:  bb 1f        rol r27                        
  28ea:  62 17        cp r22, r18                    
  28ec:  73 07        cpc r23, r19                   
  28ee:  84 07        cpc r24, r20                   
  28f0:  ba 07        cpc r27, r26                   
  28f2:  20 f0        brcs L_28fc                    ; -> 0x28fc
  28f4:  62 1b        sub r22, r18                   
  28f6:  73 0b        sbc r23, r19                   
  28f8:  84 0b        sbc r24, r20                   
  28fa:  ba 0b        sbc r27, r26                   
L_28fc:
  28fc:  ee 1f        rol r30                        
  28fe:  88 f7        brcc F_28e2                    ; -> 0x28e2
  2900:  e0 95        com r30                        
  2902:  08 95        ret                            

; ===== F_2904 =====
F_2904:
  2904:  0e 94 42 15  call F_2a84                    ; -> 0x2a84
  2908:  88 f0        brcs L_292c                    ; -> 0x292c
  290a:  9f 57        subi r25, 0x7f                 
  290c:  98 f0        brcs L_2934                    ; -> 0x2934
  290e:  b9 2f        mov r27, r25                   
  2910:  99 27        clr r25                        
  2912:  b7 51        subi r27, 0x17                 
  2914:  b0 f0        brcs L_2942                    ; -> 0x2942
  2916:  e1 f0        breq L_2950                    ; -> 0x2950
L_2918:
  2918:  66 0f        lsl r22                        
  291a:  77 1f        rol r23                        
  291c:  88 1f        rol r24                        
  291e:  99 1f        rol r25                        
  2920:  1a f0        brmi L_2928                    ; -> 0x2928
  2922:  ba 95        dec r27                        
  2924:  c9 f7        brne L_2918                    ; -> 0x2918
  2926:  14 c0        rjmp L_2950                    ; -> 0x2950
L_2928:
  2928:  b1 30        cpi r27, 0x01                  
  292a:  91 f0        breq L_2950                    ; -> 0x2950
L_292c:
  292c:  0e 94 5c 15  call F_2ab8                    ; -> 0x2ab8
  2930:  b1 e0        ldi r27, 0x01                  
  2932:  08 95        ret                            
L_2934:
  2934:  0c 94 5c 15  jmp F_2ab8                     ; -> 0x2ab8
L_2938:
  2938:  67 2f        mov r22, r23                   
  293a:  78 2f        mov r23, r24                   
  293c:  88 27        clr r24                        
  293e:  b8 5f        subi r27, 0xf8                 
  2940:  39 f0        breq L_2950                    ; -> 0x2950
L_2942:
  2942:  b9 3f        cpi r27, 0xf9                  
  2944:  cc f3        brlt L_2938                    ; -> 0x2938
L_2946:
  2946:  86 95        lsr r24                        
  2948:  77 95        ror r23                        
  294a:  67 95        ror r22                        
  294c:  b3 95        inc r27                        
  294e:  d9 f7        brne L_2946                    ; -> 0x2946
L_2950:
  2950:  3e f4        brtc L_2960                    ; -> 0x2960
  2952:  90 95        com r25                        
  2954:  80 95        com r24                        
  2956:  70 95        com r23                        
  2958:  61 95        neg r22                        
  295a:  7f 4f        sbci r23, 0xff                 
  295c:  8f 4f        sbci r24, 0xff                 
  295e:  9f 4f        sbci r25, 0xff                 
L_2960:
  2960:  08 95        ret                            

; ===== F_2962 =====
F_2962:
  2962:  e8 94        clt                            
  2964:  09 c0        rjmp L_2978                    ; -> 0x2978

; ===== F_2966 =====
F_2966:
  2966:  97 fb        bst r25, 7                     
  2968:  3e f4        brtc L_2978                    ; -> 0x2978
  296a:  90 95        com r25                        
  296c:  80 95        com r24                        
  296e:  70 95        com r23                        
  2970:  61 95        neg r22                        
  2972:  7f 4f        sbci r23, 0xff                 
  2974:  8f 4f        sbci r24, 0xff                 
  2976:  9f 4f        sbci r25, 0xff                 
L_2978:
  2978:  99 23        tst r25                        
  297a:  a9 f0        breq L_29a6                    ; -> 0x29a6
  297c:  f9 2f        mov r31, r25                   
  297e:  96 e9        ldi r25, 0x96                  
  2980:  bb 27        clr r27                        
L_2982:
  2982:  93 95        inc r25                        
  2984:  f6 95        lsr r31                        
  2986:  87 95        ror r24                        
  2988:  77 95        ror r23                        
  298a:  67 95        ror r22                        
  298c:  b7 95        ror r27                        
  298e:  f1 11        cpse r31, r1                   
  2990:  f8 cf        rjmp L_2982                    ; -> 0x2982
  2992:  fa f4        brpl L_29d2                    ; -> 0x29d2
  2994:  bb 0f        lsl r27                        
  2996:  11 f4        brne L_299c                    ; -> 0x299c
  2998:  60 ff        sbrs r22, 0                    
  299a:  1b c0        rjmp L_29d2                    ; -> 0x29d2
L_299c:
  299c:  6f 5f        subi r22, 0xff                 
  299e:  7f 4f        sbci r23, 0xff                 
  29a0:  8f 4f        sbci r24, 0xff                 
  29a2:  9f 4f        sbci r25, 0xff                 
  29a4:  16 c0        rjmp L_29d2                    ; -> 0x29d2
L_29a6:
  29a6:  88 23        tst r24                        
  29a8:  11 f0        breq L_29ae                    ; -> 0x29ae
  29aa:  96 e9        ldi r25, 0x96                  
  29ac:  11 c0        rjmp L_29d0                    ; -> 0x29d0
L_29ae:
  29ae:  77 23        tst r23                        
  29b0:  21 f0        breq L_29ba                    ; -> 0x29ba
  29b2:  9e e8        ldi r25, 0x8e                  
  29b4:  87 2f        mov r24, r23                   
  29b6:  76 2f        mov r23, r22                   
  29b8:  05 c0        rjmp L_29c4                    ; -> 0x29c4
L_29ba:
  29ba:  66 23        tst r22                        
  29bc:  71 f0        breq L_29da                    ; -> 0x29da
  29be:  96 e8        ldi r25, 0x86                  
  29c0:  86 2f        mov r24, r22                   
  29c2:  70 e0        ldi r23, 0x00                  
L_29c4:
  29c4:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  29c6:  2a f0        brmi L_29d2                    ; -> 0x29d2
L_29c8:
  29c8:  9a 95        dec r25                        
  29ca:  66 0f        lsl r22                        
  29cc:  77 1f        rol r23                        
  29ce:  88 1f        rol r24                        
L_29d0:
  29d0:  da f7        brpl L_29c8                    ; -> 0x29c8
L_29d2:
  29d2:  88 0f        lsl r24                        
  29d4:  96 95        lsr r25                        
  29d6:  87 95        ror r24                        
  29d8:  97 f9        bld r25, 7                     
L_29da:
  29da:  08 95        ret                            

; ===== F_29dc =====
F_29dc:
  29dc:  99 0f        lsl r25                        
  29de:  00 08        sbc r0, r0                     
  29e0:  55 0f        lsl r21                        
  29e2:  aa 0b        sbc r26, r26                   
  29e4:  e0 e8        ldi r30, 0x80                  
  29e6:  fe ef        ldi r31, 0xfe                  ; r31:r30 = 0xfe80 (65152)
  29e8:  16 16        cp r1, r22                     
  29ea:  17 06        cpc r1, r23                    
  29ec:  e8 07        cpc r30, r24                   
  29ee:  f9 07        cpc r31, r25                   
  29f0:  c0 f0        brcs L_2a22                    ; -> 0x2a22
  29f2:  12 16        cp r1, r18                     
  29f4:  13 06        cpc r1, r19                    
  29f6:  e4 07        cpc r30, r20                   
  29f8:  f5 07        cpc r31, r21                   
  29fa:  98 f0        brcs L_2a22                    ; -> 0x2a22
  29fc:  62 1b        sub r22, r18                   
  29fe:  73 0b        sbc r23, r19                   
  2a00:  84 0b        sbc r24, r20                   
  2a02:  95 0b        sbc r25, r21                   
  2a04:  39 f4        brne L_2a14                    ; -> 0x2a14
  2a06:  0a 26        eor r0, r26                    
  2a08:  61 f0        breq L_2a22                    ; -> 0x2a22
  2a0a:  23 2b        or r18, r19                    
  2a0c:  24 2b        or r18, r20                    
  2a0e:  25 2b        or r18, r21                    
  2a10:  21 f4        brne L_2a1a                    ; -> 0x2a1a
  2a12:  08 95        ret                            
L_2a14:
  2a14:  0a 26        eor r0, r26                    
  2a16:  09 f4        brne L_2a1a                    ; -> 0x2a1a
  2a18:  a1 40        sbci r26, 0x01                 
L_2a1a:
  2a1a:  a6 95        lsr r26                        
  2a1c:  8f ef        ldi r24, 0xff                  
  2a1e:  81 1d        adc r24, r1                    
  2a20:  81 1d        adc r24, r1                    
L_2a22:
  2a22:  08 95        ret                            
L_2a24:
  2a24:  97 f9        bld r25, 7                     
  2a26:  9f 67        ori r25, 0x7f                  
  2a28:  80 e8        ldi r24, 0x80                  
  2a2a:  70 e0        ldi r23, 0x00                  
  2a2c:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  2a2e:  08 95        ret                            
L_2a30:
  2a30:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xff80 (65408)
  2a32:  80 ec        ldi r24, 0xc0                  ; r25:r24 = 0xffc0 (65472)
  2a34:  08 95        ret                            

; ===== F_2a36 =====
F_2a36:
  2a36:  00 24        clr r0                         
  2a38:  0a 94        dec r0                         
  2a3a:  16 16        cp r1, r22                     
  2a3c:  17 06        cpc r1, r23                    
  2a3e:  18 06        cpc r1, r24                    
  2a40:  09 06        cpc r0, r25                    
  2a42:  08 95        ret                            

; ===== F_2a44 =====
F_2a44:
  2a44:  00 24        clr r0                         
  2a46:  0a 94        dec r0                         
  2a48:  12 16        cp r1, r18                     
  2a4a:  13 06        cpc r1, r19                    
  2a4c:  14 06        cpc r1, r20                    
  2a4e:  05 06        cpc r0, r21                    
  2a50:  08 95        ret                            
L_2a52:
  2a52:  09 2e        mov r0, r25                    
  2a54:  03 94        inc r0                         
  2a56:  00 0c        lsl r0                         
  2a58:  11 f4        brne L_2a5e                    ; -> 0x2a5e
  2a5a:  88 23        tst r24                        
  2a5c:  52 f0        brmi L_2a72                    ; -> 0x2a72
L_2a5e:
  2a5e:  bb 0f        lsl r27                        
  2a60:  40 f4        brcc L_2a72                    ; -> 0x2a72
  2a62:  bf 2b        or r27, r31                    
  2a64:  11 f4        brne L_2a6a                    ; -> 0x2a6a
  2a66:  60 ff        sbrs r22, 0                    
  2a68:  04 c0        rjmp L_2a72                    ; -> 0x2a72
L_2a6a:
  2a6a:  6f 5f        subi r22, 0xff                 
  2a6c:  7f 4f        sbci r23, 0xff                 
  2a6e:  8f 4f        sbci r24, 0xff                 
  2a70:  9f 4f        sbci r25, 0xff                 
L_2a72:
  2a72:  08 95        ret                            

; ===== F_2a74 =====
F_2a74:
  2a74:  57 fd        sbrc r21, 7                    
  2a76:  90 58        subi r25, 0x80                 
  2a78:  44 0f        lsl r20                        
  2a7a:  55 1f        rol r21                        
  2a7c:  59 f0        breq L_2a94                    ; -> 0x2a94
  2a7e:  5f 3f        cpi r21, 0xff                  
  2a80:  71 f0        breq L_2a9e                    ; -> 0x2a9e
L_2a82:
  2a82:  47 95        ror r20                        

; ===== F_2a84 =====
F_2a84:
  2a84:  88 0f        lsl r24                        
  2a86:  97 fb        bst r25, 7                     
  2a88:  99 1f        rol r25                        
  2a8a:  61 f0        breq L_2aa4                    ; -> 0x2aa4
  2a8c:  9f 3f        cpi r25, 0xff                  
  2a8e:  79 f0        breq L_2aae                    ; -> 0x2aae
L_2a90:
  2a90:  87 95        ror r24                        
  2a92:  08 95        ret                            
L_2a94:
  2a94:  12 16        cp r1, r18                     
  2a96:  13 06        cpc r1, r19                    
  2a98:  14 06        cpc r1, r20                    
  2a9a:  55 1f        rol r21                        
  2a9c:  f2 cf        rjmp L_2a82                    ; -> 0x2a82
L_2a9e:
  2a9e:  46 95        lsr r20                        
  2aa0:  f1 df        rcall F_2a84                   ; -> 0x2a84
  2aa2:  08 c0        rjmp L_2ab4                    ; -> 0x2ab4
L_2aa4:
  2aa4:  16 16        cp r1, r22                     
  2aa6:  17 06        cpc r1, r23                    
  2aa8:  18 06        cpc r1, r24                    
  2aaa:  99 1f        rol r25                        
  2aac:  f1 cf        rjmp L_2a90                    ; -> 0x2a90
L_2aae:
  2aae:  86 95        lsr r24                        
  2ab0:  71 05        cpc r23, r1                    
  2ab2:  61 05        cpc r22, r1                    
L_2ab4:
  2ab4:  08 94        sec                            
  2ab6:  08 95        ret                            

; ===== F_2ab8 =====
F_2ab8:
  2ab8:  e8 94        clt                            
L_2aba:
  2aba:  bb 27        clr r27                        
  2abc:  66 27        clr r22                        
  2abe:  77 27        clr r23                        
  2ac0:  cb 01        movw r25:r24, r23:r22          
  2ac2:  97 f9        bld r25, 7                     
  2ac4:  08 95        ret                            

; ===== F_2ac6 =====
F_2ac6:
  2ac6:  0e 94 ee 14  call F_29dc                    ; -> 0x29dc
  2aca:  08 f4        brcc L_2ace                    ; -> 0x2ace
  2acc:  8f ef        ldi r24, 0xff                  
L_2ace:
  2ace:  08 95        ret                            

; ===== F_2ad0 =====
F_2ad0:
  2ad0:  0e 94 7b 15  call F_2af6                    ; -> 0x2af6
  2ad4:  0c 94 29 15  jmp L_2a52                     ; -> 0x2a52
L_2ad8:
  2ad8:  0e 94 1b 15  call F_2a36                    ; -> 0x2a36
  2adc:  38 f0        brcs L_2aec                    ; -> 0x2aec
  2ade:  0e 94 22 15  call F_2a44                    ; -> 0x2a44
  2ae2:  20 f0        brcs L_2aec                    ; -> 0x2aec
  2ae4:  95 23        and r25, r21                   
  2ae6:  11 f0        breq L_2aec                    ; -> 0x2aec
  2ae8:  0c 94 12 15  jmp L_2a24                     ; -> 0x2a24
L_2aec:
  2aec:  0c 94 18 15  jmp L_2a30                     ; -> 0x2a30
L_2af0:
  2af0:  11 24        clr r1                         
  2af2:  0c 94 5d 15  jmp L_2aba                     ; -> 0x2aba

; ===== F_2af6 =====
F_2af6:
  2af6:  0e 94 3a 15  call F_2a74                    ; -> 0x2a74
  2afa:  70 f3        brcs L_2ad8                    ; -> 0x2ad8
  2afc:  95 9f        mul r25, r21                   
  2afe:  c1 f3        breq L_2af0                    ; -> 0x2af0
  2b00:  95 0f        add r25, r21                   
  2b02:  50 e0        ldi r21, 0x00                  
  2b04:  55 1f        rol r21                        
  2b06:  62 9f        mul r22, r18                   
  2b08:  f0 01        movw r31:r30, r1:r0            
  2b0a:  72 9f        mul r23, r18                   
  2b0c:  bb 27        clr r27                        
  2b0e:  f0 0d        add r31, r0                    
  2b10:  b1 1d        adc r27, r1                    
  2b12:  63 9f        mul r22, r19                   
  2b14:  aa 27        clr r26                        
  2b16:  f0 0d        add r31, r0                    
  2b18:  b1 1d        adc r27, r1                    
  2b1a:  aa 1f        rol r26                        
  2b1c:  64 9f        mul r22, r20                   
  2b1e:  66 27        clr r22                        
  2b20:  b0 0d        add r27, r0                    
  2b22:  a1 1d        adc r26, r1                    
  2b24:  66 1f        rol r22                        
  2b26:  82 9f        mul r24, r18                   
  2b28:  22 27        clr r18                        
  2b2a:  b0 0d        add r27, r0                    
  2b2c:  a1 1d        adc r26, r1                    
  2b2e:  62 1f        adc r22, r18                   
  2b30:  73 9f        mul r23, r19                   
  2b32:  b0 0d        add r27, r0                    
  2b34:  a1 1d        adc r26, r1                    
  2b36:  62 1f        adc r22, r18                   
  2b38:  83 9f        mul r24, r19                   
  2b3a:  a0 0d        add r26, r0                    
  2b3c:  61 1d        adc r22, r1                    
  2b3e:  22 1f        rol r18                        
  2b40:  74 9f        mul r23, r20                   
  2b42:  33 27        clr r19                        
  2b44:  a0 0d        add r26, r0                    
  2b46:  61 1d        adc r22, r1                    
  2b48:  23 1f        adc r18, r19                   
  2b4a:  84 9f        mul r24, r20                   
  2b4c:  60 0d        add r22, r0                    
  2b4e:  21 1d        adc r18, r1                    
  2b50:  82 2f        mov r24, r18                   
  2b52:  76 2f        mov r23, r22                   
  2b54:  6a 2f        mov r22, r26                   
  2b56:  11 24        clr r1                         
  2b58:  9f 57        subi r25, 0x7f                 
  2b5a:  50 40        sbci r21, 0x00                 
  2b5c:  9a f0        brmi L_2b84                    ; -> 0x2b84
  2b5e:  f1 f0        breq L_2b9c                    ; -> 0x2b9c
L_2b60:
  2b60:  88 23        tst r24                        
  2b62:  4a f0        brmi L_2b76                    ; -> 0x2b76
  2b64:  ee 0f        lsl r30                        
  2b66:  ff 1f        rol r31                        
  2b68:  bb 1f        rol r27                        
  2b6a:  66 1f        rol r22                        
  2b6c:  77 1f        rol r23                        
  2b6e:  88 1f        rol r24                        
  2b70:  91 50        subi r25, 0x01                 
  2b72:  50 40        sbci r21, 0x00                 
  2b74:  a9 f7        brne L_2b60                    ; -> 0x2b60
L_2b76:
  2b76:  9e 3f        cpi r25, 0xfe                  
  2b78:  51 05        cpc r21, r1                    
  2b7a:  80 f0        brcs L_2b9c                    ; -> 0x2b9c
  2b7c:  0c 94 12 15  jmp L_2a24                     ; -> 0x2a24
L_2b80:
  2b80:  0c 94 5d 15  jmp L_2aba                     ; -> 0x2aba
L_2b84:
  2b84:  5f 3f        cpi r21, 0xff                  
  2b86:  e4 f3        brlt L_2b80                    ; -> 0x2b80
  2b88:  98 3e        cpi r25, 0xe8                  
  2b8a:  d4 f3        brlt L_2b80                    ; -> 0x2b80
L_2b8c:
  2b8c:  86 95        lsr r24                        
  2b8e:  77 95        ror r23                        
  2b90:  67 95        ror r22                        
  2b92:  b7 95        ror r27                        
  2b94:  f7 95        ror r31                        
  2b96:  e7 95        ror r30                        
  2b98:  9f 5f        subi r25, 0xff                 
  2b9a:  c1 f7        brne L_2b8c                    ; -> 0x2b8c
L_2b9c:
  2b9c:  fe 2b        or r31, r30                    
  2b9e:  88 0f        lsl r24                        
  2ba0:  91 1d        adc r25, r1                    
  2ba2:  96 95        lsr r25                        
  2ba4:  87 95        ror r24                        
  2ba6:  97 f9        bld r25, 7                     
  2ba8:  08 95        ret                            

; ===== F_2baa =====
F_2baa:
  2baa:  0e 94 ee 14  call F_29dc                    ; -> 0x29dc
  2bae:  88 0b        sbc r24, r24                   
  2bb0:  99 0b        sbc r25, r25                   
  2bb2:  08 95        ret                            
  2bb4:  ee 0f        lsl r30                        
  2bb6:  ff 1f        rol r31                        
  2bb8:  05 90        lpm r0, Z+                     
  2bba:  f4 91        lpm r31, Z                     
  2bbc:  e0 2d        mov r30, r0                    
  2bbe:  09 94        ijmp                           
2bc0:  .db 0xf8, 0x94, 0xff, 0xcf, 0x00, 0x00, 0x00, 0x00, 0xa5, 0x01, 0x05, 0x01, 0x32, 0x01, 0xf2, 0x01
2bd0:  .db 0x63, 0x01, 0x41, 0x01, 0x55, 0x01, 0x00, 0x00, 0x00, 0x00, 0x3d, 0x03, 0x10, 0x03, 0x6c, 0x03
2be0:  .db 0xe6, 0x02, 0x09, 0x03, 0xf6, 0x02, 0xe7, 0x02
2be8:  .string "\r\n"
2beb:  .string "nan"
2bef:  .string "inf"
2bf3:  .string "ovf"
2bf7:  .string "IMU initialization unsuccessful"
2c17:  .string "Check IMU wiring or try cycling power"
2c3d:  .string "Status: "
2c46:  .string "\t"
2c48:  .string "\xff\xff"
2c4a:  .db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
2c5a:  .db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
2c6a:  .db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
2c7a:  .db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
