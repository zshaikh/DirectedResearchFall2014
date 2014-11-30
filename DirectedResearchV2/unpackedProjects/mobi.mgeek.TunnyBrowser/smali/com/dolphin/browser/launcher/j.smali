.class Lcom/dolphin/browser/launcher/j;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bv;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/launcher/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/i;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/dolphin/browser/launcher/j;->c:Lcom/dolphin/browser/launcher/i;

    iput p2, p0, Lcom/dolphin/browser/launcher/j;->a:I

    iput-object p3, p0, Lcom/dolphin/browser/launcher/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 452
    instance-of v1, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v1, :cond_0

    .line 453
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    .line 454
    iget v1, p0, Lcom/dolphin/browser/launcher/j;->a:I

    iget v2, p1, Lcom/dolphin/browser/launcher/cl;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/j;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 457
    :cond_0
    return v0
.end method
