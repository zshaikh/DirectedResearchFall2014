.class public final enum Lcom/c/b/c/f;
.super Ljava/lang/Enum;
.source "LazyMap.java"


# static fields
.field public static final enum a:Lcom/c/b/c/f;

.field public static final enum b:Lcom/c/b/c/f;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/c/b/c/f;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 64
    new-instance v0, Lcom/c/b/c/f;

    const-string v1, "KEYS_ONLY"

    const-string v2, "keysOnly"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/c/b/c/f;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/f;->a:Lcom/c/b/c/f;

    .line 65
    new-instance v0, Lcom/c/b/c/f;

    const-string v1, "FULL_MAP"

    const-string v2, "fullMap"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/c/b/c/f;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/f;->b:Lcom/c/b/c/f;

    .line 63
    new-array v0, v5, [Lcom/c/b/c/f;

    sget-object v1, Lcom/c/b/c/f;->a:Lcom/c/b/c/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/c/f;->b:Lcom/c/b/c/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/c/b/c/f;->f:[Lcom/c/b/c/f;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/f;->c:Ljava/util/Map;

    .line 70
    const-class v0, Lcom/c/b/c/f;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/f;

    .line 71
    sget-object v2, Lcom/c/b/c/f;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-short p3, p0, Lcom/c/b/c/f;->d:S

    .line 111
    iput-object p4, p0, Lcom/c/b/c/f;->e:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/f;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/c/b/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/f;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/f;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/c/b/c/f;->f:[Lcom/c/b/c/f;

    invoke-virtual {v0}, [Lcom/c/b/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/c/b/c/f;->e:Ljava/lang/String;

    return-object v0
.end method
