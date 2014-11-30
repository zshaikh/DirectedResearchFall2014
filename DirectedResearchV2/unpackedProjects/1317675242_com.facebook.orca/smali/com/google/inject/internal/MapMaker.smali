.class public final Lcom/google/inject/internal/MapMaker;
.super Ljava/lang/Object;
.source "MapMaker.java"


# static fields
.field private static final COMPUTING:Lcom/google/inject/internal/MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builder:Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;

.field private expirationNanos:J

.field private keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

.field private useCustomMap:Z

.field private valueStrength:Lcom/google/inject/internal/MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 724
    new-instance v0, Lcom/google/inject/internal/MapMaker$1;

    invoke-direct {v0}, Lcom/google/inject/internal/MapMaker$1;-><init>()V

    sput-object v0, Lcom/google/inject/internal/MapMaker;->COMPUTING:Lcom/google/inject/internal/MapMaker$ValueReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/google/inject/internal/MapMaker$Strength;->STRONG:Lcom/google/inject/internal/MapMaker$Strength;

    iput-object v0, p0, Lcom/google/inject/internal/MapMaker;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

    .line 91
    sget-object v0, Lcom/google/inject/internal/MapMaker$Strength;->STRONG:Lcom/google/inject/internal/MapMaker$Strength;

    iput-object v0, p0, Lcom/google/inject/internal/MapMaker;->valueStrength:Lcom/google/inject/internal/MapMaker$Strength;

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/inject/internal/MapMaker;->expirationNanos:J

    .line 94
    new-instance v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;

    invoke-direct {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/inject/internal/MapMaker;->builder:Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/google/inject/internal/MapMaker;)Lcom/google/inject/internal/MapMaker$Strength;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/inject/internal/MapMaker;)Lcom/google/inject/internal/MapMaker$Strength;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker;->valueStrength:Lcom/google/inject/internal/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/inject/internal/MapMaker;)J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/inject/internal/MapMaker;->expirationNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/inject/internal/MapMaker;)Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker;->builder:Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/inject/internal/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/inject/internal/MapMaker;->COMPUTING:Lcom/google/inject/internal/MapMaker$ValueReference;

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/inject/internal/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/google/inject/internal/MapMaker;->computing()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    return-object v0
.end method

.method private static computing()Lcom/google/inject/internal/MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 744
    sget-object v0, Lcom/google/inject/internal/MapMaker;->COMPUTING:Lcom/google/inject/internal/MapMaker$ValueReference;

    return-object v0
.end method

.method private setKeyStrength(Lcom/google/inject/internal/MapMaker$Strength;)Lcom/google/inject/internal/MapMaker;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

    sget-object v1, Lcom/google/inject/internal/MapMaker$Strength;->STRONG:Lcom/google/inject/internal/MapMaker$Strength;

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/MapMaker;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/google/inject/internal/MapMaker;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/inject/internal/MapMaker;->useCustomMap:Z

    .line 185
    return-object p0
.end method

.method private setValueStrength(Lcom/google/inject/internal/MapMaker$Strength;)Lcom/google/inject/internal/MapMaker;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker;->valueStrength:Lcom/google/inject/internal/MapMaker$Strength;

    sget-object v1, Lcom/google/inject/internal/MapMaker$Strength;->STRONG:Lcom/google/inject/internal/MapMaker$Strength;

    if-eq v0, v1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/MapMaker;->valueStrength:Lcom/google/inject/internal/MapMaker$Strength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/google/inject/internal/MapMaker;->valueStrength:Lcom/google/inject/internal/MapMaker$Strength;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/inject/internal/MapMaker;->useCustomMap:Z

    .line 217
    return-object p0
.end method


# virtual methods
.method public makeComputingMap(Lcom/google/inject/internal/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/google/inject/internal/MapMaker$StrategyImpl;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/MapMaker$StrategyImpl;-><init>(Lcom/google/inject/internal/MapMaker;Lcom/google/inject/internal/Function;)V

    iget-object v0, v0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public weakKeys()Lcom/google/inject/internal/MapMaker;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/inject/internal/MapMaker$Strength;->WEAK:Lcom/google/inject/internal/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/google/inject/internal/MapMaker;->setKeyStrength(Lcom/google/inject/internal/MapMaker$Strength;)Lcom/google/inject/internal/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lcom/google/inject/internal/MapMaker;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/google/inject/internal/MapMaker$Strength;->WEAK:Lcom/google/inject/internal/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/google/inject/internal/MapMaker;->setValueStrength(Lcom/google/inject/internal/MapMaker$Strength;)Lcom/google/inject/internal/MapMaker;

    move-result-object v0

    return-object v0
.end method
