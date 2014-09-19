.class final Lcom/fusepowered/m1/android/MMSDK$2;
.super Lcom/fusepowered/m1/android/AdCache$Iterator;
.source "MMSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMSDK;->printDiagnostics(Lcom/fusepowered/m1/android/MMAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMSDK$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method callback(Lcom/fusepowered/m1/android/CachedAd;)Z
    .locals 7
    .parameter "ad"

    .prologue
    const/4 v4, 0x1

    const-string v6, "not "

    const-string v5, ""

    .line 1349
    const-string v0, "%s %s is %son disk. Is %sexpired."

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMSDK$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/fusepowered/m1/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    move-object v3, v5

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    move-object v3, v5

    :goto_1
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1350
    return v4

    .line 1349
    :cond_0
    const-string v3, "not "

    move-object v3, v6

    goto :goto_0

    :cond_1
    const-string v3, "not "

    move-object v3, v6

    goto :goto_1
.end method
