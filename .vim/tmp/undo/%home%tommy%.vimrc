Vim�UnDo� εc��Q�ю��J=z��.��~h�WSS�-�f        
                           UVZd    _�                     �       ����                                                                                                                                                   D                                                                                                                                                                                                       UVX�     �   �   �          %"Plugin 'rking/ag.vim' "need external5�_�                    �       ����                                                                                                                                                   D                                                                                                                                                                                                       UVX�     �   �   �         �   �   �      5�_�                    }        ����                                                                                                                                                   E                                                                                                                                                                                                       UVY     �   |   }          " ColorScheme{{{   colorscheme pencil   "colorscheme hipster   colorscheme badwolf   "let g:molokai_original = 1   "let g:rehash256 = 1   "colorscheme default   "   4" Reload the colorscheme whenever we write the file.   "augroup color_dev   "au!   *"au BufWritePost badwolf.vim color badwolf   "augroup END   " }}}5�_�                   J        ����                                                                                                                                                   7                                                                                                                                                                                                       UVY    �  J  Y  �    �  J  K  �    5�_�                            ����                                                                                                                                                   7                                                                                                                                                                                                       UVY�     �  �             " }}}5�_�                   �        ����                                                                                                                                                   7                                                                                                                                                                                                       UVY�     �  �  �           5�_�                   �        ����                                                                                                                                                   7                                                                                                                                                                                                       UVY�     �  �           �  �         5�_�      	                     ����                                                                                                                                                   7                                                                                                                                                                                                       UVZ     �  �          " QuickFix {}5�_�      
           	          ����                                                                                                                                                   7                                                                                                                                                                                                       UVZ     �  �          " QuickFix {{}}5�_�   	              
          ����                                                                                                                                                   7                                                                                                                                                                                                       UVZ     �             " �           �  �          " QuickFix {{{}}}5�_�   
                       ����                                                                                                                                                   7                                                                                                                                                                                                       UVZ     �                let all = getqflist()�             function! GrepQuickFix(pat)5�_�                          ����                                                                                                                                                   7                                                                                                                                                                                                       UVZ     �                    if bufname()�                let all = getqflist()5�_�                          ����                                                                                                                                                   7                                                                                                                                                                                                       UVZ,     �                    if bufname(d['bufnr'])5�_�                          ����                                                                                                                                                   7                                                                                                                                                                                                       UVZ.     �                    if bufname(d['bufnr'])5�_�                      4    ����                                                                                                                                                   7                                                                                                                                                                                                       UVZ@     �            4        if bufname(d['bufnr']) !~ a:pat && d['text']5�_�                      <    ����                                                                                                                                                   7                                                                                                                                                                                                       UVZG     �                        �          5�_�                      '    ����                                                                                                                                                   7                                                                                                                                                                                                       UVZS     �                        �          5�_�                          ����                                                                                                                                                   7                                                                                                                                                                                                       UVZV     �    	  
          call setqflist()�    	  	              �          5�_�                          ����                                                                                                                                                   7                                                                                                                                                                                                       UVZ_     �    
            �    
  
    5�_�                    	   
    ����                                                                                                                                                   7                                                                                                                                                                                                       UVZc    �  	           �  	        5��