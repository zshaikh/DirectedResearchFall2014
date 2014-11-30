.class Lcom/pocketchange/android/PCSingleton$14$2;
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
    .line 364
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$14$2;->a:Lcom/pocketchange/android/PCSingleton$14;

    invoke-direct {p0, p2}, Lcom/pocketchange/android/util/ExceptionLoggingTimerTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runWithErrors()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14$2;->a:Lcom/pocketchange/android/PCSingleton$14;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-static {v0}, Lcom/pocketchange/android/PCSingleton;->b(Lcom/pocketchange/android/PCSingleton;)V

    .line 368
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14$2;->a:Lcom/pocketchange/android/PCSingleton$14;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->e()V

    .line 369
    return-void
.end method
