if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet elseif elseif ( ".st."condition".et." )<CR>{<CR><Tab>".st.et."<CR>}<CR>".st.et
exec "Snippet do do<CR>{<CR>".st.et."<CR><CR>} while ( ".st.et." );<CR>".st.et
exec "Snippet reql require_once( '".st."file".et."' );<CR>".st.et
exec "Snippet if? $".st."retVal".et." = ( ".st."condition".et." ) ? ".st."a".et." : ".st."b".et." ;<CR>".st.et
exec "Snippet phpp <?php<CR><CR>".st.et."<CR><CR>?>"
exec "Snippet switch switch ( ".st."variable".et." )<CR>{<CR>case '".st."value".et."':<CR>".st.et."<CR>break;<CR><CR>".st.et."<CR><CR>default:<CR>".st.et."<CR>break;<CR>}<CR>".st.et
exec "Snippet class /**<CR> * ".st."ClassName".et."<CR> **/<CR>class ".st."ClassName".et." ".st."extendsAnotherClass".et."<CR>{<CR>//internal variables<CR><CR>//Constructor<CR>function __construct ( ".st."argument".et.")<CR>{<CR>".st.et."<CR>}<CR>###<CR><CR>}<CR>###".st.et
exec "Snippet incll include_once( '".st."file".et."' );".st.et
exec "Snippet incl include( '".st."file".et."' );".st.et
exec "Snippet foreach foreach( $".st."variable".et." as $".st."key".et." => $".st."value".et." )<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet ifelse if ( ".st."condition".et." )<CR>{<CR>".st.et."<CR>}<CR>else<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet $_ $_REQUEST['".st."variable".et."']<CR>".st.et
exec "Snippet case case '".st."variable".et."':<CR>".st.et."<CR>break;<CR>".st.et
exec "Snippet print print \"".st."string".et."\"".st.et.";".st.et."<CR>".st.et
exec "Snippet function ".st."public".et."function ".st."FunctionName".et." (".st.et.")<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet if if ( ".st."condition".et." )<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet else else<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet array $".st."arrayName".et." = array( '".st.et."',".st.et." );".st.et
exec "Snippet -globals $GLOBALS['".st."variable".et."']".st.et.st."something".et.st.et.";<CR>".st.et
exec "Snippet req require( '".st."file".et."' );<CR>".st.et
exec "Snippet for for ( $".st."i".et."=".st.et."; $".st."i".et." < ".st.et."; $".st."i".et."++ )<CR>{ <CR>".st.et."<CR>}<CR>".st.et
exec "Snippet while while ( ".st.et." )<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet doc_d /**<CR>* ".st."undocumentedConstant".et."<CR>**/<CR>define(".st.et.", ".st.et.");".st.et."<CR>".st.et
exec "Snippet doc_vp /**<CR>* ".st."undocumentedClassVariable".et."<CR>*<CR>* @var ".st."string".et.st.et."<CR>**/".st.et."<CR>"
exec "Snippet doc_f /**<CR>* ".st."undocumentedFunction".et."<CR>*<CR>* @return ".st."void".et."<CR>* @author ".st.et."<CR>**/<CR>".st.et."function ".st.et."(".st.et.")<CR>{".st.et."<CR>}<CR>".st.et
exec "Snippet doc_s /**<CR>* ".st."undocumentedFunction".et."<CR>*<CR>* @return ".st."void".et."<CR>* @author ".st.et."<CR>**/".st.et
exec "Snippet doc_h /**<CR>* ".st.et."<CR>*<CR>* @author ".st.et."<CR>* @version $Id$<CR>* @copyright ".st.et.", ".st.et."<CR>* @package ".st."default".et."<CR>**/<CR><CR>/**<CR>* Define DocBlock<CR>**/<CR><CR>".st.et
exec "Snippet doc_fp /**<CR>* ".st."undocumentedFunction".et."<CR>*<CR>* @return ".st."void".et."<CR>* @author ".st.et."<CR>**/".st.et."<CR>"
exec "Snippet doc_i /**<CR>* ".st."undocumentedClass".et."<CR>*<CR>* @package ".st."default".et."<CR>* @author ".st.et."<CR>**/<CR>interface ".st.et."<CR>{".st.et."<CR>} // END interface ".st.et."<CR>".st.et
exec "Snippet doc_fp /**<CR>* ".st."undocumentedConstant".et.st.et."<CR>**/".st.et."<CR>".st.et
exec "Snippet doc_v /**<CR>* ".st."undocumentedClassVariable".et."<CR>*<CR>* @var ".st."string".et."<CR>**/<CR><var> $".st.et.";".st.et."<CR>".st.et
exec "Snippet doc_cp /**<CR>* ".st."undocumentedClass".et."<CR>*<CR>* @package ".st."default".et."<CR>* @author ".st.et."<CR>**/".st.et
exec "Snippet doc_c /**<CR>* ".st."undocumentedClass".et."<CR>*<CR>* @package ".st."default".et."<CR>* @author ".st.et."<CR>**/<CR>".st."class".et."class ".st."a".et."<CR>{".st.et."<CR>} // END ".st."class".et."class ".st."a".et."<CR>".st.et
