.class Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# static fields
.field static final loadFactor:Ljava/lang/reflect/Field;

.field static final segmentMask:Ljava/lang/reflect/Field;

.field static final segmentShift:Ljava/lang/reflect/Field;

.field static final segments:Ljava/lang/reflect/Field;

.field static final strategy:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1897
    const-string v0, "loadFactor"

    invoke-static {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->loadFactor:Ljava/lang/reflect/Field;

    .line 1898
    const-string v0, "segmentShift"

    invoke-static {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->segmentShift:Ljava/lang/reflect/Field;

    .line 1899
    const-string v0, "segmentMask"

    invoke-static {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->segmentMask:Ljava/lang/reflect/Field;

    .line 1900
    const-string v0, "segments"

    invoke-static {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->segments:Ljava/lang/reflect/Field;

    .line 1901
    const-string v0, "strategy"

    invoke-static {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Fields;->strategy:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 1905
    :try_start_0
    const-class v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1906
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    return-object v0

    .line 1908
    :catch_0
    move-exception v0

    .line 1909
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
