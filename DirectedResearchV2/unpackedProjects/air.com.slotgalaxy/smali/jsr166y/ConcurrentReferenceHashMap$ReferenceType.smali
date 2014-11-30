.class public final enum Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SOFT:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

.field public static final enum STRONG:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

.field public static final enum WEAK:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

.field private static final synthetic a:[Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->STRONG:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    .line 144
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v3}, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->WEAK:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    .line 146
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v4}, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->SOFT:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    sget-object v1, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->STRONG:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    aput-object v1, v0, v2

    sget-object v1, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->WEAK:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    aput-object v1, v0, v3

    sget-object v1, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->SOFT:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    aput-object v1, v0, v4

    sput-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->a:[Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

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
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    return-object p0
.end method

.method public static values()[Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->a:[Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    invoke-virtual {v0}, [Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    return-object v0
.end method
