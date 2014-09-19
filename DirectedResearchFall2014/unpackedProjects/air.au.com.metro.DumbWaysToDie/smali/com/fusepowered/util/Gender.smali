.class public final enum Lcom/fusepowered/util/Gender;
.super Ljava/lang/Enum;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/Gender;

.field public static final enum FUSE_GENDER_FEMALE:Lcom/fusepowered/util/Gender;

.field public static final enum FUSE_GENDER_MALE:Lcom/fusepowered/util/Gender;

.field public static final enum FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;


# instance fields
.field private genderCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/Gender;

    const-string v1, "FUSE_GENDER_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/fusepowered/util/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    .line 5
    new-instance v0, Lcom/fusepowered/util/Gender;

    const-string v1, "FUSE_GENDER_MALE"

    invoke-direct {v0, v1, v3, v3}, Lcom/fusepowered/util/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_MALE:Lcom/fusepowered/util/Gender;

    .line 6
    new-instance v0, Lcom/fusepowered/util/Gender;

    const-string v1, "FUSE_GENDER_FEMALE"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_FEMALE:Lcom/fusepowered/util/Gender;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/util/Gender;

    sget-object v1, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/Gender;->FUSE_GENDER_MALE:Lcom/fusepowered/util/Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/util/Gender;->FUSE_GENDER_FEMALE:Lcom/fusepowered/util/Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/util/Gender;->$VALUES:[Lcom/fusepowered/util/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "genderCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/fusepowered/util/Gender;->genderCode:I

    .line 12
    return-void
.end method

.method public static getGenderByCode(I)Lcom/fusepowered/util/Gender;
    .locals 1
    .parameter "genderCode"

    .prologue
    .line 23
    packed-switch p0, :pswitch_data_0

    .line 31
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    goto :goto_0

    .line 27
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_MALE:Lcom/fusepowered/util/Gender;

    goto :goto_0

    .line 29
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_FEMALE:Lcom/fusepowered/util/Gender;

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/Gender;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/util/Gender;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/Gender;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/Gender;->$VALUES:[Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, [Lcom/fusepowered/util/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/Gender;

    return-object v0
.end method


# virtual methods
.method public getGenderCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/fusepowered/util/Gender;->genderCode:I

    return v0
.end method

.method public setGenderCode(I)V
    .locals 0
    .parameter "genderCode"

    .prologue
    .line 19
    iput p1, p0, Lcom/fusepowered/util/Gender;->genderCode:I

    .line 20
    return-void
.end method
