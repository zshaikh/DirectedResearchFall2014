.class Lcom/pocketchange/android/PCSingleton$e$1;
.super Lcom/pocketchange/android/util/ExceptionLoggingRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$e;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton;

.field final synthetic b:Lcom/pocketchange/android/PCSingleton$e;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$e;Ljava/lang/String;Lcom/pocketchange/android/PCSingleton;)V
    .locals 0

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$e$1;->b:Lcom/pocketchange/android/PCSingleton$e;

    iput-object p3, p0, Lcom/pocketchange/android/PCSingleton$e$1;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0, p2}, Lcom/pocketchange/android/util/ExceptionLoggingRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runWithErrors()V
    .locals 2

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$e$1;->a:Lcom/pocketchange/android/PCSingleton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->a(Z)V

    .line 1887
    return-void
.end method
