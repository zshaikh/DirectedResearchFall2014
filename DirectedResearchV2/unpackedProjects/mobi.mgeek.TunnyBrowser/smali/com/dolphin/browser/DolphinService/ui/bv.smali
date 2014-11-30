.class Lcom/dolphin/browser/DolphinService/ui/bv;
.super Lcom/dolphin/browser/util/f;
.source "MasterPasswordCreateDialog.java"


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

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bv;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/bv;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/bv;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-object v2
.end method
