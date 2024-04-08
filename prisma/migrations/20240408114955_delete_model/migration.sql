/*
  Warnings:

  - You are about to drop the `_UserProducts` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_UserProducts" DROP CONSTRAINT "_UserProducts_A_fkey";

-- DropForeignKey
ALTER TABLE "_UserProducts" DROP CONSTRAINT "_UserProducts_B_fkey";

-- DropTable
DROP TABLE "_UserProducts";
