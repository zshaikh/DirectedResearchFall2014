.class public Lcom/facebook/orca/common/util/FileSizeUtil;
.super Ljava/lang/Object;
.source "FileSizeUtil.java"


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/common/util/FileSizeUtil;->a:Landroid/content/res/Resources;

    .line 19
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v1, 0x800

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 22
    if-ge p1, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/facebook/orca/common/util/FileSizeUtil;->a:Landroid/content/res/Resources;

    const v1, 0x7f0a00af

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 25
    :cond_0
    div-int/lit16 v0, p1, 0x400

    .line 26
    if-ge v0, v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/facebook/orca/common/util/FileSizeUtil;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a00b0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_1
    div-int/lit16 v0, v0, 0x400

    .line 31
    iget-object v1, p0, Lcom/facebook/orca/common/util/FileSizeUtil;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a00b1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
