" Colorscheme config                                                                                    
syntax enable                                                                                           
set background=dark                                                                                     
colorscheme palenight                                                                                   
let g:lightline = { 'colorscheme': 'palenight' }                                                        
let g:airline_theme = "palenight"                                                                       
if (has("termguicolors"))                                                                               
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"                                                                
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"                                                                
  set termguicolors                                                                                     
endif                                                                                                   
let g:palenight_terminal_italics=1                                                                      

