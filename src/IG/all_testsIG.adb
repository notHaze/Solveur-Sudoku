with run_Tests_TAD_CoordonneeIG;
with run_Tests_TAD_EnsembleIG;
with run_Tests_TAD_GrilleIG;
with run_Tests_ResolutionsIG;
with Ada.Text_IO; use ada.Text_IO;

package body all_testsIG is

   procedure run_All_TestsIG is
   F : File_Type;
begin
      Create(F,Out_File,"affichage.txt");
      Close(F);
   -- execution automatique de tous les tests
      run_Tests_TAD_CoordonneeIG;
      run_Tests_TAD_EnsembleIG;
      run_Tests_TAD_GrilleIG;
      run_Tests_ResolutionsIG;
      put("ok");
end run_All_TestsIG;



end all_testsIG;
