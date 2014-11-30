.class Lcom/pocketchange/android/PCSingleton$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/PCSingleton$Configuration$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/PCSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    if-nez p1, :cond_0

    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "state cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$b;->a:Landroid/os/Bundle;

    .line 260
    return-void
.end method


# virtual methods
.method public a()Lcom/pocketchange/android/PCSingleton$Configuration;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$b;->a:Landroid/os/Bundle;

    const-class v1, Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 264
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$b;->a:Landroid/os/Bundle;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/pocketchange/android/PCSingleton$Configuration;

    return-object p0
.end method
