.class final enum Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
.super Ljava/lang/Enum;
.source "ApplifierImpactWebData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ApplifierImpactRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Analytics:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field public static final enum Unsent:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field public static final enum VideoPlan:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field public static final enum VideoViewed:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const-string v1, "Analytics"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Analytics:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const-string v1, "VideoPlan"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const-string v1, "VideoViewed"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const-string v1, "Unsent"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Analytics:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ENUM$VALUES:[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValueOf(Ljava/lang/String;)Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 91
    :goto_0
    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    goto :goto_0

    .line 88
    :cond_1
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    goto :goto_0

    .line 91
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ENUM$VALUES:[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "output":Ljava/lang/String;
    return-object v0
.end method
