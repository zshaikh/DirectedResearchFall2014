.class Lcom/google/android/imageloader/ImageLoader$ImageTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
        "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/imageloader/ImageLoader;


# direct methods
.method private constructor <init>(Lcom/google/android/imageloader/ImageLoader;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/google/android/imageloader/ImageLoader$ImageTask;->this$0:Lcom/google/android/imageloader/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/imageloader/ImageLoader;Lcom/google/android/imageloader/ImageLoader$ImageTask;)V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;-><init>(Lcom/google/android/imageloader/ImageLoader;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->doInBackground([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)Ljava/lang/Void;
    .locals 5
    .param p1, "requests"    # [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    .prologue
    const/4 v2, 0x0

    .line 968
    array-length v3, p1

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    .line 973
    const/4 v1, 0x0

    return-object v1

    .line 968
    :cond_0
    aget-object v0, p1, v1

    .line 969
    .local v0, "request":Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-virtual {v0}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->execute()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 970
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    aput-object v0, v4, v2

    invoke-virtual {p0, v4}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->publishProgress([Ljava/lang/Object;)V

    .line 968
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final varargs executeOnThreadPool([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)Landroid/os/AsyncTask;
    .locals 9
    .param p1, "params"    # [Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
            "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 936
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    .line 957
    .end local p0    # "this":Lcom/google/android/imageloader/ImageLoader$ImageTask;
    :goto_0
    return-object p0

    .line 937
    .restart local p0    # "this":Lcom/google/android/imageloader/ImageLoader$ImageTask;
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 939
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    goto :goto_0

    .line 944
    :cond_1
    :try_start_0
    const-class v4, Landroid/os/AsyncTask;

    const-string v5, "executeOnExecutor"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/util/concurrent/Executor;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 945
    .local v3, "method":Ljava/lang/reflect/Method;
    const-class v4, Landroid/os/AsyncTask;

    const-string v5, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 946
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 947
    .local v1, "executor":Ljava/lang/Object;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 948
    .end local v1    # "executor":Ljava/lang/Object;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected NoSuchMethodException"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 950
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected NoSuchFieldException"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 952
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 953
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 954
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected InvocationTargetException"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageTask;->this$0:Lcom/google/android/imageloader/ImageLoader;

    # getter for: Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I
    invoke-static {v0}, Lcom/google/android/imageloader/ImageLoader;->access$10(Lcom/google/android/imageloader/ImageLoader;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/imageloader/ImageLoader;->access$11(Lcom/google/android/imageloader/ImageLoader;I)V

    .line 986
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageTask;->this$0:Lcom/google/android/imageloader/ImageLoader;

    invoke-virtual {v0}, Lcom/google/android/imageloader/ImageLoader;->flushRequests()V

    .line 987
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageTask;->this$0:Lcom/google/android/imageloader/ImageLoader;

    # getter for: Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I
    invoke-static {v0}, Lcom/google/android/imageloader/ImageLoader;->access$10(Lcom/google/android/imageloader/ImageLoader;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/imageloader/ImageLoader;->access$11(Lcom/google/android/imageloader/ImageLoader;I)V

    .line 964
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V
    .locals 3
    .param p1, "values"    # [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    .prologue
    .line 978
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 981
    return-void

    .line 978
    :cond_0
    aget-object v0, p1, v1

    .line 979
    .local v0, "request":Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-virtual {v0}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->publishResult()V

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->onProgressUpdate([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    return-void
.end method
