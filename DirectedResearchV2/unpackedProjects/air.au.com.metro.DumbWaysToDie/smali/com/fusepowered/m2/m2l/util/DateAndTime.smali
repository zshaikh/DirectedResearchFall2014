.class public Lcom/fusepowered/m2/m2l/util/DateAndTime;
.super Ljava/lang/Object;
.source "DateAndTime.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/util/DateAndTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/fusepowered/m2/m2l/util/DateAndTime;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/util/DateAndTime;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/DateAndTime;->instance:Lcom/fusepowered/m2/m2l/util/DateAndTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static localTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/fusepowered/m2/m2l/util/DateAndTime;->instance:Lcom/fusepowered/m2/m2l/util/DateAndTime;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/DateAndTime;->internalLocalTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static now()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/fusepowered/m2/m2l/util/DateAndTime;->instance:Lcom/fusepowered/m2/m2l/util/DateAndTime;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/DateAndTime;->internalNow()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/util/DateAndTime;)V
    .locals 0
    .param p0, "newInstance"    # Lcom/fusepowered/m2/m2l/util/DateAndTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    sput-object p0, Lcom/fusepowered/m2/m2l/util/DateAndTime;->instance:Lcom/fusepowered/m2/m2l/util/DateAndTime;

    .line 43
    return-void
.end method


# virtual methods
.method public internalLocalTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public internalNow()Ljava/util/Date;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
