.class public final Lcom/dolphin/browser/theme/c/d;
.super Lcom/dolphin/browser/theme/c/c;
.source "DrawableFileSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/dolphin/browser/theme/c/c;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/d;->a:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/dolphin/browser/theme/c/d;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 88
    goto :goto_0
.end method
