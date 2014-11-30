.class Lcom/dolphin/browser/DolphinService/ui/cb;
.super Lcom/dolphin/browser/util/f;
.source "MasterPasswordEncryptPasswordDialog.java"


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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->e:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/cb;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->e:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/l/e;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/l/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/ui/cb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/l/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
