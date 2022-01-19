package body TAD_Pile is

   --------------
   -- une_Pile --
   --------------

   function construirePile return Pile is
      p : Pile;
   begin
      p.nb_Elements := 0;
      return p;
   end construirePile;

   --------------
   -- est_Vide --
   --------------

   function estVide (p : in Pile) return Boolean is
   begin
      return (p.nb_Elements = 0);
   end estVide;

   -------------
   -- dernier --
   -------------

   function dernier (p : in Pile) return T is
   begin
      if p.nb_Elements = 0 then
         raise PILE_VIDE;
      end if;
      return (p.elements (p.nb_Elements));
   end dernier;

   ------------
   -- empile --
   ------------

   function empile (p : in Pile; e : in T) return Pile is
      newP : Pile;
   begin
      if p.nb_Elements = TAILLE_MAX then
         raise PILE_PLEINE;
      end if;
      newP                             := p;
      newP.nb_Elements                 := newP.nb_Elements + 1;
      newP.elements (newP.nb_Elements) := e;
      return newP;
   end empile;

   ------------
   -- depile --
   ------------

   function depile (p : in Pile) return Pile is
      newP : Pile;
   begin
      if p.nb_Elements = 0 then
         raise PILE_VIDE;
      end if;
      newP             := p;
      newP.nb_Elements := newP.nb_Elements - 1;
      return newP;
   end depile;

end TAD_Pile;
