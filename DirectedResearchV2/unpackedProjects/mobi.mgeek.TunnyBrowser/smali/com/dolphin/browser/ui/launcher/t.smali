.class Lcom/dolphin/browser/ui/launcher/t;
.super Ljava/lang/Object;
.source "MostVisitedFolderManager.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bf;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/ui/launcher/s;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/t;->b:Lcom/dolphin/browser/ui/launcher/s;

    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/cl;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v0, 0x1

    goto :goto_0
.end method
