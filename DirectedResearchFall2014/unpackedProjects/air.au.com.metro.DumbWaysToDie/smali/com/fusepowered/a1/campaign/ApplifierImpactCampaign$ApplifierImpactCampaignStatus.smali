.class public final enum Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;
.super Ljava/lang/Enum;
.source "ApplifierImpactCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplifierImpactCampaignStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

.field public static final enum PANIC:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

.field public static final enum READY:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

.field public static final enum VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->READY:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    new-instance v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    const-string v1, "VIEWED"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    new-instance v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    const-string v1, "PANIC"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->PANIC:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    sget-object v1, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->READY:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->PANIC:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->ENUM$VALUES:[Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValueOf(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;
    .locals 2
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->READY:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->READY:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    .line 25
    :goto_0
    return-object v0

    .line 22
    :cond_0
    sget-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->PANIC:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->ENUM$VALUES:[Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "output":Ljava/lang/String;
    return-object v0
.end method
