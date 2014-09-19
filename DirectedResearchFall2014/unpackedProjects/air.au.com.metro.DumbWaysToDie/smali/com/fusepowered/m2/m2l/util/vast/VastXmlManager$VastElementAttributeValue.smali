.class final enum Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;
.super Ljava/lang/Enum;
.source "VastXmlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VastElementAttributeValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

.field public static final enum FIRST_QUARTILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

.field public static final enum MIDPOINT:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

.field public static final enum START:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

.field public static final enum THIRD_QUARTILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    const-string v1, "START"

    const-string v2, "start"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->START:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    .line 60
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    const-string v1, "FIRST_QUARTILE"

    const-string v2, "firstQuartile"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->FIRST_QUARTILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    .line 61
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    const-string v1, "MIDPOINT"

    const-string v2, "midpoint"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->MIDPOINT:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    .line 62
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    const-string v1, "THIRD_QUARTILE"

    const-string v2, "thirdQuartile"

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->THIRD_QUARTILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    .line 63
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    const-string v1, "COMPLETE"

    const-string v2, "complete"

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->COMPLETE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->START:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->FIRST_QUARTILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->MIDPOINT:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->THIRD_QUARTILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->COMPLETE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->value:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->value:Ljava/lang/String;

    return-object v0
.end method
