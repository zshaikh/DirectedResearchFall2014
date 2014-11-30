.class public abstract enum Lcom/google/inject/internal/BytecodeGen$Visibility;
.super Ljava/lang/Enum;
.source "BytecodeGen.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/inject/internal/BytecodeGen$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/inject/internal/BytecodeGen$Visibility;

.field public static final enum PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

.field public static final enum SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    new-instance v0, Lcom/google/inject/internal/BytecodeGen$Visibility$1;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/BytecodeGen$Visibility$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    .line 207
    new-instance v0, Lcom/google/inject/internal/BytecodeGen$Visibility$2;

    const-string v1, "SAME_PACKAGE"

    invoke-direct {v0, v1, v3}, Lcom/google/inject/internal/BytecodeGen$Visibility$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/inject/internal/BytecodeGen$Visibility;

    sget-object v1, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->$VALUES:[Lcom/google/inject/internal/BytecodeGen$Visibility;

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
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/inject/internal/BytecodeGen$1;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/BytecodeGen$Visibility;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forMember(Ljava/lang/reflect/Member;)Lcom/google/inject/internal/BytecodeGen$Visibility;
    .locals 5

    .prologue
    .line 214
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    .line 227
    :goto_0
    return-object v0

    .line 218
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 221
    :goto_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 222
    invoke-static {v3}, Lcom/google/inject/internal/BytecodeGen$Visibility;->forType(Ljava/lang/Class;)Lcom/google/inject/internal/BytecodeGen$Visibility;

    move-result-object v3

    sget-object v4, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    if-ne v3, v4, :cond_2

    .line 223
    sget-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    goto :goto_0

    .line 218
    :cond_1
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 221
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 227
    :cond_3
    sget-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    goto :goto_0
.end method

.method public static forType(Ljava/lang/Class;)Lcom/google/inject/internal/BytecodeGen$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/internal/BytecodeGen$Visibility;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/inject/internal/BytecodeGen$Visibility;
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcom/google/inject/internal/BytecodeGen$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/inject/internal/BytecodeGen$Visibility;

    return-object p0
.end method

.method public static values()[Lcom/google/inject/internal/BytecodeGen$Visibility;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->$VALUES:[Lcom/google/inject/internal/BytecodeGen$Visibility;

    invoke-virtual {v0}, [Lcom/google/inject/internal/BytecodeGen$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/inject/internal/BytecodeGen$Visibility;

    return-object v0
.end method


# virtual methods
.method public abstract and(Lcom/google/inject/internal/BytecodeGen$Visibility;)Lcom/google/inject/internal/BytecodeGen$Visibility;
.end method
