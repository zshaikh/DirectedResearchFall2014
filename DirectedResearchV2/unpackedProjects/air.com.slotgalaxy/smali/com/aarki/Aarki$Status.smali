.class public final enum Lcom/aarki/Aarki$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aarki/Aarki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aarki/Aarki$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AppNotRegistered:Lcom/aarki/Aarki$Status;

.field public static final enum NotAvailable:Lcom/aarki/Aarki$Status;

.field public static final enum OK:Lcom/aarki/Aarki$Status;

.field private static final synthetic a:[Lcom/aarki/Aarki$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/aarki/Aarki$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/aarki/Aarki$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aarki/Aarki$Status;->OK:Lcom/aarki/Aarki$Status;

    new-instance v0, Lcom/aarki/Aarki$Status;

    const-string v1, "NotAvailable"

    invoke-direct {v0, v1, v3}, Lcom/aarki/Aarki$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aarki/Aarki$Status;->NotAvailable:Lcom/aarki/Aarki$Status;

    new-instance v0, Lcom/aarki/Aarki$Status;

    const-string v1, "AppNotRegistered"

    invoke-direct {v0, v1, v4}, Lcom/aarki/Aarki$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aarki/Aarki$Status;->AppNotRegistered:Lcom/aarki/Aarki$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aarki/Aarki$Status;

    sget-object v1, Lcom/aarki/Aarki$Status;->OK:Lcom/aarki/Aarki$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aarki/Aarki$Status;->NotAvailable:Lcom/aarki/Aarki$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aarki/Aarki$Status;->AppNotRegistered:Lcom/aarki/Aarki$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aarki/Aarki$Status;->a:[Lcom/aarki/Aarki$Status;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aarki/Aarki$Status;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/aarki/Aarki$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aarki/Aarki$Status;

    return-object p0
.end method

.method public static values()[Lcom/aarki/Aarki$Status;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/aarki/Aarki$Status;->a:[Lcom/aarki/Aarki$Status;

    invoke-virtual {v0}, [Lcom/aarki/Aarki$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aarki/Aarki$Status;

    return-object v0
.end method
