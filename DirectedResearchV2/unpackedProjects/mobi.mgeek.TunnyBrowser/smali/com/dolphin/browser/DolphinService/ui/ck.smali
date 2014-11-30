.class Lcom/dolphin/browser/DolphinService/ui/ck;
.super Lcom/dolphin/browser/util/f;
.source "PasswordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/cg;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/cg;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ck;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ck;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/cg;->b()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/ck;->a([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ck;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/DolphinService/ui/cg;->changeCursor(Landroid/database/Cursor;)V

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ck;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/cg;->a(Lcom/dolphin/browser/DolphinService/ui/cg;Z)Z

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ck;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/cg;->c(Lcom/dolphin/browser/DolphinService/ui/cg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ck;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/cg;->b(Lcom/dolphin/browser/DolphinService/ui/cg;Z)Z

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ck;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/cg;->a()V

    .line 155
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/ck;->a(Landroid/database/Cursor;)V

    return-void
.end method
