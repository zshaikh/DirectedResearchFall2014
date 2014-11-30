.class Lcom/dolphin/browser/DolphinService/ui/bs;
.super Lcom/dolphin/browser/util/f;
.source "MasterPasswordClearPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bs;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/bs;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bs;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->a()V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method
