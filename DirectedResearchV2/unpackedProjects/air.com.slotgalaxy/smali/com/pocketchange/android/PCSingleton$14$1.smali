.class Lcom/pocketchange/android/PCSingleton$14$1;
.super Lcom/pocketchange/android/util/ExceptionLoggingTimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$14;->runWithErrors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton$14;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$14;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$14$1;->a:Lcom/pocketchange/android/PCSingleton$14;

    invoke-direct {p0, p2}, Lcom/pocketchange/android/util/ExceptionLoggingTimerTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runWithErrors()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14$1;->a:Lcom/pocketchange/android/PCSingleton$14;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->n()V

    .line 358
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14$1;->a:Lcom/pocketchange/android/PCSingleton$14;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->f()V

    .line 359
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14$1;->a:Lcom/pocketchange/android/PCSingleton$14;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->i()V

    .line 360
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14$1;->a:Lcom/pocketchange/android/PCSingleton$14;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->a(Z)V

    .line 361
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14$1;->a:Lcom/pocketchange/android/PCSingleton$14;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->k()V

    .line 362
    return-void
.end method
