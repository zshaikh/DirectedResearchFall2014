.class public final enum Lcom/facebook/SessionState;
.super Ljava/lang/Enum;
.source "SessionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/SessionState$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$SessionState:[I

.field private static synthetic $SWITCH_TABLE$com$facebook$SessionState$Category:[I

.field public static final enum CLOSED:Lcom/facebook/SessionState;

.field public static final enum CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

.field public static final enum CREATED:Lcom/facebook/SessionState;

.field public static final enum CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

.field private static final synthetic ENUM$VALUES:[Lcom/facebook/SessionState;

.field public static final enum OPENED:Lcom/facebook/SessionState;

.field public static final enum OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

.field public static final enum OPENING:Lcom/facebook/SessionState;


# instance fields
.field private final category:Lcom/facebook/SessionState$Category;


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$SessionState()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/SessionState;->$SWITCH_TABLE$com$facebook$SessionState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/SessionState;->values()[Lcom/facebook/SessionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/facebook/SessionState;->$SWITCH_TABLE$com$facebook$SessionState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$facebook$SessionState$Category()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/SessionState;->$SWITCH_TABLE$com$facebook$SessionState$Category:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/SessionState$Category;->values()[Lcom/facebook/SessionState$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-virtual {v1}, Lcom/facebook/SessionState$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-virtual {v1}, Lcom/facebook/SessionState$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-virtual {v1}, Lcom/facebook/SessionState$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/facebook/SessionState;->$SWITCH_TABLE$com$facebook$SessionState$Category:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/facebook/SessionState;

    const-string v1, "CREATED"

    .line 33
    sget-object v2, Lcom/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    sput-object v0, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    .line 35
    new-instance v0, Lcom/facebook/SessionState;

    const-string v1, "CREATED_TOKEN_LOADED"

    .line 44
    sget-object v2, Lcom/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    sput-object v0, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    .line 46
    new-instance v0, Lcom/facebook/SessionState;

    const-string v1, "OPENING"

    .line 49
    sget-object v2, Lcom/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    sput-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    .line 51
    new-instance v0, Lcom/facebook/SessionState;

    const-string v1, "OPENED"

    .line 54
    sget-object v2, Lcom/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    sput-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    .line 56
    new-instance v0, Lcom/facebook/SessionState;

    const-string v1, "OPENED_TOKEN_UPDATED"

    .line 64
    sget-object v2, Lcom/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    sput-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    .line 66
    new-instance v0, Lcom/facebook/SessionState;

    const-string v1, "CLOSED_LOGIN_FAILED"

    const/4 v2, 0x5

    .line 70
    sget-object v3, Lcom/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    sput-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    .line 72
    new-instance v0, Lcom/facebook/SessionState;

    const-string v1, "CLOSED"

    const/4 v2, 0x6

    .line 75
    sget-object v3, Lcom/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    sput-object v0, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/SessionState;

    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/SessionState;->ENUM$VALUES:[Lcom/facebook/SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
    .locals 0
    .param p3, "category"    # Lcom/facebook/SessionState$Category;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/SessionState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/facebook/SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/SessionState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/SessionState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/SessionState;->ENUM$VALUES:[Lcom/facebook/SessionState;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/SessionState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getAndroidASCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "res":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/SessionState;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/SessionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 156
    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    const-string v0, "com.gamesys.android.ane.fb.SESSION_CLOSED"

    .line 133
    goto :goto_0

    .line 135
    :pswitch_1
    const-string v0, "com.gamesys.android.ane.fb.SESSION_CLOSED_LOGIN_FAILED"

    .line 136
    goto :goto_0

    .line 138
    :pswitch_2
    const-string v0, "com.gamesys.android.ane.fb.SESSION_CREATED"

    .line 139
    goto :goto_0

    .line 141
    :pswitch_3
    const-string v0, "com.gamesys.android.ane.fb.SESSION_CREATED_TOKEN_LOADED"

    .line 142
    goto :goto_0

    .line 144
    :pswitch_4
    const-string v0, "com.gamesys.android.ane.fb.SESSION_OPENED"

    .line 145
    goto :goto_0

    .line 147
    :pswitch_5
    const-string v0, "com.gamesys.android.ane.fb.SESSION_OPENED_TOKEN_UPDATED"

    .line 148
    goto :goto_0

    .line 150
    :pswitch_6
    const-string v0, "com.gamesys.android.ane.fb.SESSION_OPENING"

    .line 151
    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAndroidASLevel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "res":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/SessionState;->$SWITCH_TABLE$com$facebook$SessionState$Category()[I

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;

    invoke-virtual {v2}, Lcom/facebook/SessionState$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    const-string v0, "com.gamesys.android.ane.fb.LEVEL_CLOSED"

    .line 109
    goto :goto_0

    .line 111
    :pswitch_1
    const-string v0, "com.gamesys.android.ane.fb.LEVEL_CREATED"

    .line 112
    goto :goto_0

    .line 114
    :pswitch_2
    const-string v0, "com.gamesys.android.ane.fb.LEVEL_OPENED"

    .line 115
    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;

    sget-object v1, Lcom/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;

    sget-object v1, Lcom/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/facebook/SessionState$Category;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
