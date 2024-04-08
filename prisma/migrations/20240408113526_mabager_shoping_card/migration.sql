-- CreateTable
CREATE TABLE "managers" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "managers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "shopping_cards" (
    "id" SERIAL NOT NULL,
    "totalItems" INTEGER NOT NULL,
    "totalCost" DOUBLE PRECISION NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "shopping_cards_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_ManagerUsers" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "managers_email_key" ON "managers"("email");

-- CreateIndex
CREATE UNIQUE INDEX "shopping_cards_userId_key" ON "shopping_cards"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "_ManagerUsers_AB_unique" ON "_ManagerUsers"("A", "B");

-- CreateIndex
CREATE INDEX "_ManagerUsers_B_index" ON "_ManagerUsers"("B");

-- AddForeignKey
ALTER TABLE "shopping_cards" ADD CONSTRAINT "shopping_cards_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ManagerUsers" ADD CONSTRAINT "_ManagerUsers_A_fkey" FOREIGN KEY ("A") REFERENCES "managers"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ManagerUsers" ADD CONSTRAINT "_ManagerUsers_B_fkey" FOREIGN KEY ("B") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
