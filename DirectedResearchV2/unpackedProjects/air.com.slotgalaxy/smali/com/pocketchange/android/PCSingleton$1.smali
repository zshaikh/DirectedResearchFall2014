.class final Lcom/pocketchange/android/PCSingleton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/PCSingleton$Configuration$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->initialize(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/pocketchange/android/PCSingleton$1;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/pocketchange/android/PCSingleton$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/pocketchange/android/PCSingleton$Configuration;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pocketchange/android/PCSingleton$Configuration;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/pocketchange/android/PCSingleton$Configuration;

    move-result-object v0

    .line 228
    iget-boolean v1, p0, Lcom/pocketchange/android/PCSingleton$1;->c:Z

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/pocketchange/android/content/ContextUtils;->isDebugBuild(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton$Configuration;->a(Z)V

    .line 240
    :cond_0
    return-object v0

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Test mode cannot be enabled for production releases"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
