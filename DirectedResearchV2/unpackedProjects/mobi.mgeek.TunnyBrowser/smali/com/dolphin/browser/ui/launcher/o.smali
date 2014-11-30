.class Lcom/dolphin/browser/ui/launcher/o;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bv;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/o;->b:Lcom/dolphin/browser/ui/launcher/g;

    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 2

    .prologue
    .line 948
    instance-of v0, p1, Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_0

    .line 949
    check-cast p1, Lcom/dolphin/browser/launcher/be;

    .line 950
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/be;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/o;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 952
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
