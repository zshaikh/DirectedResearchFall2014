.class public final enum Lcom/fusepowered/util/Model;
.super Ljava/lang/Enum;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/Model;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/Model;

.field public static final enum ipad:Lcom/fusepowered/util/Model;

.field public static final enum iphone:Lcom/fusepowered/util/Model;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/fusepowered/util/Model;

    const-string v1, "iphone"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/util/Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/util/Model;->iphone:Lcom/fusepowered/util/Model;

    .line 7
    new-instance v0, Lcom/fusepowered/util/Model;

    const-string v1, "ipad"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/util/Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/util/Model;->ipad:Lcom/fusepowered/util/Model;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/util/Model;

    sget-object v1, Lcom/fusepowered/util/Model;->iphone:Lcom/fusepowered/util/Model;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/Model;->ipad:Lcom/fusepowered/util/Model;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/util/Model;->$VALUES:[Lcom/fusepowered/util/Model;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/Model;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/util/Model;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/Model;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/Model;->$VALUES:[Lcom/fusepowered/util/Model;

    invoke-virtual {v0}, [Lcom/fusepowered/util/Model;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/Model;

    return-object v0
.end method
