.class public final enum Lcom/c/b/b/p;
.super Ljava/lang/Enum;
.source "NoteStore.java"


# static fields
.field public static final enum a:Lcom/c/b/b/p;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/b/p;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lcom/c/b/b/p;


# instance fields
.field private final c:S

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12275
    new-instance v0, Lcom/c/b/b/p;

    const-string v1, "AUTHENTICATION_TOKEN"

    const-string v2, "authenticationToken"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/c/b/b/p;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/p;->a:Lcom/c/b/b/p;

    .line 12274
    new-array v0, v4, [Lcom/c/b/b/p;

    sget-object v1, Lcom/c/b/b/p;->a:Lcom/c/b/b/p;

    aput-object v1, v0, v3

    sput-object v0, Lcom/c/b/b/p;->e:[Lcom/c/b/b/p;

    .line 12277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/b/p;->b:Ljava/util/Map;

    .line 12280
    const-class v0, Lcom/c/b/b/p;

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

    check-cast v0, Lcom/c/b/b/p;

    .line 12281
    sget-object v2, Lcom/c/b/b/p;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/b/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12283
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
    .line 12317
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12318
    iput-short p3, p0, Lcom/c/b/b/p;->c:S

    .line 12319
    iput-object p4, p0, Lcom/c/b/b/p;->d:Ljava/lang/String;

    .line 12320
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/b/p;
    .locals 1

    .prologue
    .line 12274
    const-class v0, Lcom/c/b/b/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/b/p;

    return-object v0
.end method

.method public static values()[Lcom/c/b/b/p;
    .locals 1

    .prologue
    .line 12274
    sget-object v0, Lcom/c/b/b/p;->e:[Lcom/c/b/b/p;

    invoke-virtual {v0}, [Lcom/c/b/b/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/b/p;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12327
    iget-object v0, p0, Lcom/c/b/b/p;->d:Ljava/lang/String;

    return-object v0
.end method
