.class public final enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.super Ljava/lang/Enum;
.source "JsonAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum DEFAULT:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum NON_PRIVATE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum PROTECTED_AND_PUBLIC:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v3}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 55
    new-instance v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const-string v1, "NON_PRIVATE"

    invoke-direct {v0, v1, v4}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NON_PRIVATE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 61
    new-instance v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const-string v1, "PROTECTED_AND_PUBLIC"

    invoke-direct {v0, v1, v5}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PROTECTED_AND_PUBLIC:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 66
    new-instance v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const-string v1, "PUBLIC_ONLY"

    invoke-direct {v0, v1, v6}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 72
    new-instance v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v7}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 79
    new-instance v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const-string v1, "DEFAULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NON_PRIVATE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PROTECTED_AND_PUBLIC:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v1, v0, v5

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v1, v0, v6

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->$VALUES:[Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    return-object p0
.end method

.method public static values()[Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->$VALUES:[Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    return-object v0
.end method


# virtual methods
.method public isVisible(Ljava/lang/reflect/Member;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$1;->a:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 97
    :goto_0
    return v0

    :pswitch_0
    move v0, v3

    .line 84
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 86
    goto :goto_0

    .line 88
    :pswitch_2
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 90
    :pswitch_3
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 91
    goto :goto_0

    .line 95
    :cond_1
    :pswitch_4
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
