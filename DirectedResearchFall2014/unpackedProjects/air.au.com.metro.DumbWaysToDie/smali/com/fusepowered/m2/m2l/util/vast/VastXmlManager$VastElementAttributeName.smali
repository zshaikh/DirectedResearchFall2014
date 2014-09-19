.class final enum Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;
.super Ljava/lang/Enum;
.source "VastXmlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VastElementAttributeName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

.field public static final enum EVENT:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    const-string v1, "EVENT"

    const-string v2, "event"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;->EVENT:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;->EVENT:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;->name:Ljava/lang/String;

    return-object v0
.end method
