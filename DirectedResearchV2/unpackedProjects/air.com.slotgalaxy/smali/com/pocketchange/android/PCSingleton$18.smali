.class Lcom/pocketchange/android/PCSingleton$18;
.super Lcom/pocketchange/android/util/ExceptionLoggingRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->onAppEventTriggered(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$18;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0, p2}, Lcom/pocketchange/android/util/ExceptionLoggingRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runWithErrors()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$18;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$18;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1}, Lcom/pocketchange/android/PCSingleton;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->c(Landroid/content/SharedPreferences$Editor;)V

    .line 743
    return-void
.end method
