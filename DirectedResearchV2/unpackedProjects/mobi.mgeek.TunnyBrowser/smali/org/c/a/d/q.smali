.class public Lorg/c/a/d/q;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# static fields
.field public static a:I

.field public static b:I

.field private static final c:Lorg/c/a/d/c/d;

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 47
    const-class v0, Lorg/c/a/d/q;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/q;->c:Lorg/c/a/d/c/d;

    .line 48
    const/16 v0, 0xd

    sput v0, Lorg/c/a/d/q;->a:I

    .line 49
    const/16 v0, 0xa

    sput v0, Lorg/c/a/d/q;->b:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    .line 55
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Boolean.TYPE"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Byte.TYPE"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Character.TYPE"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Double.TYPE"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Float.TYPE"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Integer.TYPE"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Long.TYPE"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Short.TYPE"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Void.TYPE"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Boolean"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Byte"

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Character"

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Double"

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Float"

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Integer"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Long"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.Short"

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "Boolean"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "Byte"

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "Character"

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "Double"

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "Float"

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "Integer"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "Long"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "Short"

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "string"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "String"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/c/a/d/q;->d:Ljava/util/HashMap;

    const-string v1, "java.lang.String"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    .line 103
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "byte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v2, "char"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v2, "double"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "int"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v2, "long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v2, "short"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "void"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "java.lang.Boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Byte;

    const-string v2, "java.lang.Byte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Character;

    const-string v2, "java.lang.Character"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Double;

    const-string v2, "java.lang.Double"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Float;

    const-string v2, "java.lang.Float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "java.lang.Integer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Long;

    const-string v2, "java.lang.Long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Short;

    const-string v2, "java.lang.Short"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-string v1, "void"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/c/a/d/q;->e:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    const-string v2, "java.lang.String"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    .line 132
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 134
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Byte;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Short;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Byte;

    const-class v3, Ljava/lang/Byte;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Double;

    const-class v3, Ljava/lang/Double;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Float;

    const-class v3, Ljava/lang/Float;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Integer;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Long;

    const-class v3, Ljava/lang/Long;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lorg/c/a/d/q;->f:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Short;

    const-class v3, Ljava/lang/Short;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(B)B
    .locals 3

    .prologue
    .line 360
    and-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v1, p0, 0x6

    mul-int/lit8 v1, v1, 0x19

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x10

    int-to-byte v0, v0

    .line 361
    if-ltz v0, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!hex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    return v0
.end method

.method public static a(I)I
    .locals 3

    .prologue
    .line 373
    and-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v1, p0, 0x6

    mul-int/lit8 v1, v1, 0x19

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x10

    .line 374
    if-ltz v0, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!hex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    return v0
.end method

.method public static a(Ljava/lang/String;III)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    .line 274
    if-gez p2, :cond_0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int p2, v1, p1

    :cond_0
    move v1, v0

    .line 277
    :goto_0
    if-ge v0, p2, :cond_3

    .line 279
    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 281
    invoke-static {v2}, Lorg/c/a/d/q;->a(I)I

    move-result v2

    .line 282
    if-ltz v2, :cond_1

    if-lt v2, p3, :cond_2

    .line 283
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_2
    mul-int/2addr v1, p3

    add-int/2addr v1, v2

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_3
    return v1
.end method

.method public static a([BIII)I
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x0

    .line 302
    .line 304
    if-gez p2, :cond_0

    .line 305
    array-length v1, p0

    sub-int p2, v1, p1

    :cond_0
    move v1, v0

    move v2, v0

    .line 307
    :goto_0
    if-ge v1, p2, :cond_6

    .line 309
    add-int v0, p1, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v3, v0

    .line 311
    add-int/lit8 v0, v3, -0x30

    .line 312
    if-ltz v0, :cond_1

    if-ge v0, p3, :cond_1

    if-lt v0, v4, :cond_3

    .line 314
    :cond_1
    add-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, -0x41

    .line 315
    if-lt v0, v4, :cond_2

    if-lt v0, p3, :cond_3

    .line 316
    :cond_2
    add-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, -0x61

    .line 318
    :cond_3
    if-ltz v0, :cond_4

    if-lt v0, p3, :cond_5

    .line 319
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_5
    mul-int/2addr v2, p3

    add-int/2addr v2, v0

    .line 307
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 322
    :cond_6
    return v2
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x39

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-byte v0, p0, v1

    .line 340
    and-int/lit16 v4, v0, 0xff

    .line 341
    div-int v0, v4, p1

    rem-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x30

    .line 342
    if-le v0, v5, :cond_0

    .line 343
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 344
    :cond_0
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    rem-int v0, v4, p1

    add-int/lit8 v0, v0, 0x30

    .line 346
    if-le v0, v5, :cond_1

    .line 347
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 348
    :cond_1
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x39

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    .line 442
    :goto_0
    add-int v0, p1, p2

    if-ge v1, v0, :cond_2

    .line 444
    aget-byte v0, p0, v1

    and-int/lit16 v3, v0, 0xff

    .line 445
    div-int/lit8 v0, v3, 0x10

    rem-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x30

    .line 446
    if-le v0, v4, :cond_0

    .line 447
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x41

    .line 448
    :cond_0
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    rem-int/lit8 v0, v3, 0x10

    add-int/lit8 v0, v0, 0x30

    .line 450
    if-le v0, v4, :cond_1

    .line 451
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 452
    :cond_1
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(BLjava/lang/Appendable;)V
    .locals 5

    .prologue
    const/16 v0, 0x37

    const/16 v1, 0x30

    const/16 v4, 0x9

    .line 384
    and-int/lit16 v2, p0, 0xf0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v3, v2, 0xf

    .line 385
    if-le v3, v4, :cond_0

    move v2, v0

    :goto_0
    add-int/2addr v2, v3

    int-to-char v2, v2

    :try_start_0
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 386
    and-int/lit8 v2, p0, 0xf

    .line 387
    if-le v2, v4, :cond_1

    :goto_1
    add-int/2addr v0, v2

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    return-void

    :cond_0
    move v2, v1

    .line 385
    goto :goto_0

    :cond_1
    move v0, v1

    .line 387
    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(B)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 429
    new-array v0, v2, [B

    aput-byte p0, v0, v1

    invoke-static {v0, v1, v2}, Lorg/c/a/d/q;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
