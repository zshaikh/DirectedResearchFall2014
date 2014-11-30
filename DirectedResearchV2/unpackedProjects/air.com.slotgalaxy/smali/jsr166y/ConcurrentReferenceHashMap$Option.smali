.class public final enum Ljsr166y/ConcurrentReferenceHashMap$Option;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljsr166y/ConcurrentReferenceHashMap$Option;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IDENTITY_COMPARISONS:Ljsr166y/ConcurrentReferenceHashMap$Option;

.field private static final synthetic a:[Ljsr166y/ConcurrentReferenceHashMap$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$Option;

    const-string v1, "IDENTITY_COMPARISONS"

    invoke-direct {v0, v1, v2}, Ljsr166y/ConcurrentReferenceHashMap$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljsr166y/ConcurrentReferenceHashMap$Option;->IDENTITY_COMPARISONS:Ljsr166y/ConcurrentReferenceHashMap$Option;

    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [Ljsr166y/ConcurrentReferenceHashMap$Option;

    sget-object v1, Ljsr166y/ConcurrentReferenceHashMap$Option;->IDENTITY_COMPARISONS:Ljsr166y/ConcurrentReferenceHashMap$Option;

    aput-object v1, v0, v2

    sput-object v0, Ljsr166y/ConcurrentReferenceHashMap$Option;->a:[Ljsr166y/ConcurrentReferenceHashMap$Option;

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
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljsr166y/ConcurrentReferenceHashMap$Option;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    const-class v0, Ljsr166y/ConcurrentReferenceHashMap$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Ljsr166y/ConcurrentReferenceHashMap$Option;

    return-object p0
.end method

.method public static values()[Ljsr166y/ConcurrentReferenceHashMap$Option;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Ljsr166y/ConcurrentReferenceHashMap$Option;->a:[Ljsr166y/ConcurrentReferenceHashMap$Option;

    invoke-virtual {v0}, [Ljsr166y/ConcurrentReferenceHashMap$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljsr166y/ConcurrentReferenceHashMap$Option;

    return-object v0
.end method
