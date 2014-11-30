.class public final Lcom/google/inject/util/Modules;
.super Ljava/lang/Object;
.source "Modules.java"


# static fields
.field public static final EMPTY_MODULE:Lcom/google/inject/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/inject/util/Modules$1;

    invoke-direct {v0}, Lcom/google/inject/util/Modules$1;-><init>()V

    sput-object v0, Lcom/google/inject/util/Modules;->EMPTY_MODULE:Lcom/google/inject/Module;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
