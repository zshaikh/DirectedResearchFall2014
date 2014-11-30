.class public final enum Lcom/nativex/monetization/enums/Language;
.super Ljava/lang/Enum;
.source "Language.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/enums/Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/enums/Language;

.field public static final enum BULGARIAN:Lcom/nativex/monetization/enums/Language;

.field public static final enum CHINESE:Lcom/nativex/monetization/enums/Language;

.field public static final enum ENGLISH:Lcom/nativex/monetization/enums/Language;

.field public static final enum FRENCH:Lcom/nativex/monetization/enums/Language;

.field public static final enum GERMANY:Lcom/nativex/monetization/enums/Language;

.field public static final enum ITALY:Lcom/nativex/monetization/enums/Language;

.field public static final enum JAPAN:Lcom/nativex/monetization/enums/Language;

.field public static final enum KOREAN:Lcom/nativex/monetization/enums/Language;

.field public static final enum PARTNER_STRINGS:Lcom/nativex/monetization/enums/Language;

.field public static final enum TAIWAN:Lcom/nativex/monetization/enums/Language;

.field public static final enum UK:Lcom/nativex/monetization/enums/Language;

.field public static final enum US:Lcom/nativex/monetization/enums/Language;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "ENGLISH"

    const-string v2, "strings_US.xml"

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->ENGLISH:Lcom/nativex/monetization/enums/Language;

    .line 31
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "US"

    const-string v2, "strings_US.xml"

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->US:Lcom/nativex/monetization/enums/Language;

    .line 32
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "UK"

    const-string v2, "strings_UK.xml"

    invoke-direct {v0, v1, v6, v2}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->UK:Lcom/nativex/monetization/enums/Language;

    .line 33
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "FRENCH"

    const-string v2, "strings_FR.xml"

    invoke-direct {v0, v1, v7, v2}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->FRENCH:Lcom/nativex/monetization/enums/Language;

    .line 34
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "ITALY"

    const-string v2, "strings_IT.xml"

    invoke-direct {v0, v1, v8, v2}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->ITALY:Lcom/nativex/monetization/enums/Language;

    .line 35
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "GERMANY"

    const/4 v2, 0x5

    const-string v3, "strings_DE.xml"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->GERMANY:Lcom/nativex/monetization/enums/Language;

    .line 36
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "JAPAN"

    const/4 v2, 0x6

    const-string v3, "strings_JA.xml"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->JAPAN:Lcom/nativex/monetization/enums/Language;

    .line 37
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "KOREAN"

    const/4 v2, 0x7

    const-string v3, "strings_KR.xml"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->KOREAN:Lcom/nativex/monetization/enums/Language;

    .line 38
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "TAIWAN"

    const/16 v2, 0x8

    const-string v3, "strings_TW.xml"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->TAIWAN:Lcom/nativex/monetization/enums/Language;

    .line 39
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "CHINESE"

    const/16 v2, 0x9

    const-string v3, "strings_ZH.xml"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->CHINESE:Lcom/nativex/monetization/enums/Language;

    .line 40
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "BULGARIAN"

    const/16 v2, 0xa

    const-string v3, "strings_BG.xml"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->BULGARIAN:Lcom/nativex/monetization/enums/Language;

    .line 41
    new-instance v0, Lcom/nativex/monetization/enums/Language;

    const-string v1, "PARTNER_STRINGS"

    const/16 v2, 0xb

    const-string v3, "strings.xml"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/Language;->PARTNER_STRINGS:Lcom/nativex/monetization/enums/Language;

    .line 28
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/nativex/monetization/enums/Language;

    sget-object v1, Lcom/nativex/monetization/enums/Language;->ENGLISH:Lcom/nativex/monetization/enums/Language;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/enums/Language;->US:Lcom/nativex/monetization/enums/Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/enums/Language;->UK:Lcom/nativex/monetization/enums/Language;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/enums/Language;->FRENCH:Lcom/nativex/monetization/enums/Language;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nativex/monetization/enums/Language;->ITALY:Lcom/nativex/monetization/enums/Language;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nativex/monetization/enums/Language;->GERMANY:Lcom/nativex/monetization/enums/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nativex/monetization/enums/Language;->JAPAN:Lcom/nativex/monetization/enums/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nativex/monetization/enums/Language;->KOREAN:Lcom/nativex/monetization/enums/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nativex/monetization/enums/Language;->TAIWAN:Lcom/nativex/monetization/enums/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nativex/monetization/enums/Language;->CHINESE:Lcom/nativex/monetization/enums/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nativex/monetization/enums/Language;->BULGARIAN:Lcom/nativex/monetization/enums/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nativex/monetization/enums/Language;->PARTNER_STRINGS:Lcom/nativex/monetization/enums/Language;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/monetization/enums/Language;->$VALUES:[Lcom/nativex/monetization/enums/Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "xmlName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/nativex/monetization/enums/Language;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/nativex/monetization/enums/Language;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/nativex/monetization/enums/Language;->ENGLISH:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/nativex/monetization/enums/Language;->ENGLISH:Lcom/nativex/monetization/enums/Language;

    .line 87
    :goto_0
    return-object v0

    .line 59
    :cond_0
    sget-object v0, Lcom/nativex/monetization/enums/Language;->US:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/nativex/monetization/enums/Language;->US:Lcom/nativex/monetization/enums/Language;

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/nativex/monetization/enums/Language;->UK:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    sget-object v0, Lcom/nativex/monetization/enums/Language;->UK:Lcom/nativex/monetization/enums/Language;

    goto :goto_0

    .line 65
    :cond_2
    sget-object v0, Lcom/nativex/monetization/enums/Language;->FRENCH:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    sget-object v0, Lcom/nativex/monetization/enums/Language;->FRENCH:Lcom/nativex/monetization/enums/Language;

    goto :goto_0

    .line 68
    :cond_3
    sget-object v0, Lcom/nativex/monetization/enums/Language;->ITALY:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    sget-object v0, Lcom/nativex/monetization/enums/Language;->ITALY:Lcom/nativex/monetization/enums/Language;

    goto :goto_0

    .line 71
    :cond_4
    sget-object v0, Lcom/nativex/monetization/enums/Language;->GERMANY:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    sget-object v0, Lcom/nativex/monetization/enums/Language;->GERMANY:Lcom/nativex/monetization/enums/Language;

    goto :goto_0

    .line 74
    :cond_5
    sget-object v0, Lcom/nativex/monetization/enums/Language;->JAPAN:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    sget-object v0, Lcom/nativex/monetization/enums/Language;->JAPAN:Lcom/nativex/monetization/enums/Language;

    goto :goto_0

    .line 77
    :cond_6
    sget-object v0, Lcom/nativex/monetization/enums/Language;->KOREAN:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    sget-object v0, Lcom/nativex/monetization/enums/Language;->KOREAN:Lcom/nativex/monetization/enums/Language;

    goto :goto_0

    .line 80
    :cond_7
    sget-object v0, Lcom/nativex/monetization/enums/Language;->KOREAN:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    sget-object v0, Lcom/nativex/monetization/enums/Language;->KOREAN:Lcom/nativex/monetization/enums/Language;

    goto :goto_0

    .line 83
    :cond_8
    sget-object v0, Lcom/nativex/monetization/enums/Language;->CHINESE:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    sget-object v0, Lcom/nativex/monetization/enums/Language;->CHINESE:Lcom/nativex/monetization/enums/Language;

    goto/16 :goto_0

    .line 86
    :cond_9
    sget-object v0, Lcom/nativex/monetization/enums/Language;->PARTNER_STRINGS:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    sget-object v0, Lcom/nativex/monetization/enums/Language;->PARTNER_STRINGS:Lcom/nativex/monetization/enums/Language;

    goto/16 :goto_0

    .line 90
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Enum specified for this string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/enums/Language;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/nativex/monetization/enums/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/enums/Language;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/enums/Language;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/nativex/monetization/enums/Language;->$VALUES:[Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, [Lcom/nativex/monetization/enums/Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/enums/Language;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nativex/monetization/enums/Language;->name:Ljava/lang/String;

    return-object v0
.end method
