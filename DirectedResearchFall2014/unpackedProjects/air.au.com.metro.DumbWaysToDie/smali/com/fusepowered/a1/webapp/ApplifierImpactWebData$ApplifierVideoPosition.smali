.class public final enum Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
.super Ljava/lang/Enum;
.source "ApplifierImpactWebData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplifierVideoPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition:[I

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

.field public static final enum End:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

.field public static final enum FirstQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

.field public static final enum MidPoint:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

.field public static final enum Start:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

.field public static final enum ThirdQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition()[I
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->values()[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->End:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->FirstQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->MidPoint:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->Start:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ThirdQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    const-string v1, "Start"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->Start:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    const-string v1, "FirstQuartile"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->FirstQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    const-string v1, "MidPoint"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->MidPoint:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    const-string v1, "ThirdQuartile"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ThirdQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    const-string v1, "End"

    invoke-direct {v0, v1, v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->End:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->Start:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->FirstQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->MidPoint:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ThirdQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->End:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ENUM$VALUES:[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ENUM$VALUES:[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, output:Ljava/lang/String;
    invoke-static {}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 67
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    const-string v0, "first_quartile"

    .line 53
    goto :goto_0

    .line 55
    :pswitch_1
    const-string v0, "mid_point"

    .line 56
    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "third_quartile"

    .line 59
    goto :goto_0

    .line 61
    :pswitch_3
    const-string v0, "video_end"

    .line 62
    goto :goto_0

    .line 64
    :pswitch_4
    const-string v0, "video_start"

    .line 65
    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
