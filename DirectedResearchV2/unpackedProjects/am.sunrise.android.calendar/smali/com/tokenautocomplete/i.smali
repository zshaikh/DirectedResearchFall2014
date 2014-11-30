.class public final enum Lcom/tokenautocomplete/i;
.super Ljava/lang/Enum;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tokenautocomplete/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tokenautocomplete/i;

.field public static final enum b:Lcom/tokenautocomplete/i;

.field public static final enum c:Lcom/tokenautocomplete/i;

.field public static final enum d:Lcom/tokenautocomplete/i;

.field private static final synthetic e:[Lcom/tokenautocomplete/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/tokenautocomplete/i;

    const-string v1, "_Parent"

    invoke-direct {v0, v1, v2}, Lcom/tokenautocomplete/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/i;->a:Lcom/tokenautocomplete/i;

    .line 55
    new-instance v0, Lcom/tokenautocomplete/i;

    const-string v1, "Clear"

    invoke-direct {v0, v1, v3}, Lcom/tokenautocomplete/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/i;->b:Lcom/tokenautocomplete/i;

    .line 56
    new-instance v0, Lcom/tokenautocomplete/i;

    const-string v1, "PartialCompletion"

    invoke-direct {v0, v1, v4}, Lcom/tokenautocomplete/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/i;->c:Lcom/tokenautocomplete/i;

    .line 57
    new-instance v0, Lcom/tokenautocomplete/i;

    const-string v1, "ToString"

    invoke-direct {v0, v1, v5}, Lcom/tokenautocomplete/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/i;->d:Lcom/tokenautocomplete/i;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tokenautocomplete/i;

    sget-object v1, Lcom/tokenautocomplete/i;->a:Lcom/tokenautocomplete/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tokenautocomplete/i;->b:Lcom/tokenautocomplete/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tokenautocomplete/i;->c:Lcom/tokenautocomplete/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tokenautocomplete/i;->d:Lcom/tokenautocomplete/i;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tokenautocomplete/i;->e:[Lcom/tokenautocomplete/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tokenautocomplete/i;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/tokenautocomplete/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tokenautocomplete/i;

    return-object v0
.end method

.method public static values()[Lcom/tokenautocomplete/i;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/tokenautocomplete/i;->e:[Lcom/tokenautocomplete/i;

    invoke-virtual {v0}, [Lcom/tokenautocomplete/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/i;

    return-object v0
.end method
