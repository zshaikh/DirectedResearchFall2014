.class public final enum Lcom/c/b/a/g;
.super Ljava/lang/Enum;
.source "EDAMUserException.java"


# static fields
.field public static final enum a:Lcom/c/b/a/g;

.field public static final enum b:Lcom/c/b/a/g;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/c/b/a/g;


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

    .line 56
    new-instance v0, Lcom/c/b/a/g;

    const-string v1, "ERROR_CODE"

    const-string v2, "errorCode"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/c/b/a/g;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/a/g;->a:Lcom/c/b/a/g;

    .line 57
    new-instance v0, Lcom/c/b/a/g;

    const-string v1, "PARAMETER"

    const-string v2, "parameter"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/c/b/a/g;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/a/g;->b:Lcom/c/b/a/g;

    .line 51
    new-array v0, v5, [Lcom/c/b/a/g;

    sget-object v1, Lcom/c/b/a/g;->a:Lcom/c/b/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/a/g;->b:Lcom/c/b/a/g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/c/b/a/g;->f:[Lcom/c/b/a/g;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/a/g;->c:Ljava/util/Map;

    .line 62
    const-class v0, Lcom/c/b/a/g;

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

    check-cast v0, Lcom/c/b/a/g;

    .line 63
    sget-object v2, Lcom/c/b/a/g;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/a/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-short p3, p0, Lcom/c/b/a/g;->d:S

    .line 103
    iput-object p4, p0, Lcom/c/b/a/g;->e:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/a/g;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/c/b/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/a/g;

    return-object v0
.end method

.method public static values()[Lcom/c/b/a/g;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/c/b/a/g;->f:[Lcom/c/b/a/g;

    invoke-virtual {v0}, [Lcom/c/b/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/a/g;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/c/b/a/g;->e:Ljava/lang/String;

    return-object v0
.end method
