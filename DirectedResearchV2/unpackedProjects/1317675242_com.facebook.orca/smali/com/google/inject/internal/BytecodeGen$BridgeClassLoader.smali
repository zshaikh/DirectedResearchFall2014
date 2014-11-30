.class Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;
.super Ljava/lang/ClassLoader;
.source "BytecodeGen.java"


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 247
    return-void
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 253
    # getter for: Lcom/google/inject/internal/BytecodeGen;->GUICE_INTERNAL_PACKAGE:Ljava/lang/String;
    invoke-static {}, Lcom/google/inject/internal/BytecodeGen;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 256
    if-eqz p2, :cond_1

    .line 257
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_1
    :goto_0
    return-object v0

    .line 260
    :catch_0
    move-exception v0

    .line 265
    :cond_2
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
