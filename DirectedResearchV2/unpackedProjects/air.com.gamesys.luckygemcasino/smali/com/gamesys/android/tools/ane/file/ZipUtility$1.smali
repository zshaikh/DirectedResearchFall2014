.class Lcom/gamesys/android/tools/ane/file/ZipUtility$1;
.super Ljava/lang/Object;
.source "ZipUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/tools/ane/file/ZipUtility;->unZipFileAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/tools/ane/file/IAsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;

.field private final synthetic val$unzipDirFullPath:Ljava/lang/String;

.field private final synthetic val$zipFileFullPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/tools/ane/file/IAsyncListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$zipFileFullPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$unzipDirFullPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;

    iput-object p5, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$handler:Landroid/os/Handler;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 122
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$zipFileFullPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$unzipDirFullPath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/gamesys/android/tools/ane/file/ZipUtility;->unZipFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "result_f":Ljava/lang/String;
    const/4 v0, 0x0

    .line 126
    .local v0, "end":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;

    if-eqz v2, :cond_0

    .line 129
    if-eqz v1, :cond_1

    .line 130
    new-instance v0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$1;

    .end local v0    # "end":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;

    invoke-direct {v0, p0, v2, v1}, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$1;-><init>(Lcom/gamesys/android/tools/ane/file/ZipUtility$1;Lcom/gamesys/android/tools/ane/file/IAsyncListener;Ljava/lang/String;)V

    .line 149
    .restart local v0    # "end":Ljava/lang/Runnable;
    :goto_0
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$2;

    .end local v0    # "end":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;

    invoke-direct {v0, p0, v2}, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$2;-><init>(Lcom/gamesys/android/tools/ane/file/ZipUtility$1;Lcom/gamesys/android/tools/ane/file/IAsyncListener;)V

    .restart local v0    # "end":Ljava/lang/Runnable;
    goto :goto_0
.end method
