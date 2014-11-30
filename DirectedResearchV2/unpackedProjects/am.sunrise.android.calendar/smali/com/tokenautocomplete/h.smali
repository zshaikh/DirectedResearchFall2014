.class public final enum Lcom/tokenautocomplete/h;
.super Ljava/lang/Enum;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tokenautocomplete/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tokenautocomplete/h;

.field public static final enum b:Lcom/tokenautocomplete/h;

.field public static final enum c:Lcom/tokenautocomplete/h;

.field private static final synthetic d:[Lcom/tokenautocomplete/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/tokenautocomplete/h;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/tokenautocomplete/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/h;->a:Lcom/tokenautocomplete/h;

    .line 63
    new-instance v0, Lcom/tokenautocomplete/h;

    const-string v1, "Delete"

    invoke-direct {v0, v1, v3}, Lcom/tokenautocomplete/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/h;->b:Lcom/tokenautocomplete/h;

    .line 64
    new-instance v0, Lcom/tokenautocomplete/h;

    const-string v1, "Select"

    invoke-direct {v0, v1, v4}, Lcom/tokenautocomplete/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/h;->c:Lcom/tokenautocomplete/h;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tokenautocomplete/h;

    sget-object v1, Lcom/tokenautocomplete/h;->a:Lcom/tokenautocomplete/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tokenautocomplete/h;->b:Lcom/tokenautocomplete/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tokenautocomplete/h;->c:Lcom/tokenautocomplete/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tokenautocomplete/h;->d:[Lcom/tokenautocomplete/h;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tokenautocomplete/h;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/tokenautocomplete/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tokenautocomplete/h;

    return-object v0
.end method

.method public static values()[Lcom/tokenautocomplete/h;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tokenautocomplete/h;->d:[Lcom/tokenautocomplete/h;

    invoke-virtual {v0}, [Lcom/tokenautocomplete/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/h;

    return-object v0
.end method
