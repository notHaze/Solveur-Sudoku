generic
   type T is private;

package TAD_Pile is

   TAILLE_MAX : constant Integer := 100;
   type Pile is private;

   PILE_PLEINE : exception;
   PILE_VIDE   : exception;

   -- construit une pile vide
   function construirePile return Pile;

   -- examine si une pile p est vide
   function estVide (p : in Pile) return Boolean;

   -- retourne l'élément le plus récent d'une pile p
   -- nécessite Pile non vide
   -- lève l'exception PILE_VIDE si la pile est vide
   function dernier (p : in Pile) return T;

   -- ajoute un élément e à une pile p
   -- nécessite Pile non pleine
   -- lève l'exception PILE_PLEINE si la pile est pleine
   function empile (p : in Pile; e : in T) return Pile;

   -- supprime l'élément le plus récent d'une pile
   -- nécessite Pile non vide
   -- lève l'exception PILE_VIDE si la pile est vide
   function depile (p : in Pile) return Pile;

private
   type Tab_Entiers is array (1 .. TAILLE_MAX) of T;
   type Pile is record
      nb_Elements : Integer;
      elements    : Tab_Entiers;
   end record;
end TAD_Pile;
