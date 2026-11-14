package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class Lifecycle {

    /* renamed from: androidx.lifecycle.Lifecycle$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$Event;
        public static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$State;

        static {
            int[] iArr = new int[Event.values().length];
            $SwitchMap$androidx$lifecycle$Lifecycle$Event = iArr;
            try {
                Event[] eventArr = Event.$VALUES;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$androidx$lifecycle$Lifecycle$Event;
                Event[] eventArr2 = Event.$VALUES;
                iArr2[4] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$androidx$lifecycle$Lifecycle$Event;
                Event[] eventArr3 = Event.$VALUES;
                iArr3[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$androidx$lifecycle$Lifecycle$Event;
                Event[] eventArr4 = Event.$VALUES;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$androidx$lifecycle$Lifecycle$Event;
                Event[] eventArr5 = Event.$VALUES;
                iArr5[2] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$androidx$lifecycle$Lifecycle$Event;
                Event[] eventArr6 = Event.$VALUES;
                iArr6[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$androidx$lifecycle$Lifecycle$Event;
                Event[] eventArr7 = Event.$VALUES;
                iArr7[6] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr8 = new int[State.values().length];
            $SwitchMap$androidx$lifecycle$Lifecycle$State = iArr8;
            try {
                State[] stateArr = State.$VALUES;
                iArr8[2] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = $SwitchMap$androidx$lifecycle$Lifecycle$State;
                State[] stateArr2 = State.$VALUES;
                iArr9[3] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                int[] iArr10 = $SwitchMap$androidx$lifecycle$Lifecycle$State;
                State[] stateArr3 = State.$VALUES;
                iArr10[4] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                int[] iArr11 = $SwitchMap$androidx$lifecycle$Lifecycle$State;
                State[] stateArr4 = State.$VALUES;
                iArr11[0] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                int[] iArr12 = $SwitchMap$androidx$lifecycle$Lifecycle$State;
                State[] stateArr5 = State.$VALUES;
                iArr12[1] = 5;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public final class Event {
        public static final /* synthetic */ Event[] $VALUES;
        public static final Event ON_ANY;
        public static final Event ON_CREATE;
        public static final Event ON_DESTROY;
        public static final Event ON_PAUSE;
        public static final Event ON_RESUME;
        public static final Event ON_START;
        public static final Event ON_STOP;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        static {
            ?? r0 = new Enum("ON_CREATE", 0);
            ON_CREATE = r0;
            ?? r1 = new Enum("ON_START", 1);
            ON_START = r1;
            ?? r3 = new Enum("ON_RESUME", 2);
            ON_RESUME = r3;
            ?? r5 = new Enum("ON_PAUSE", 3);
            ON_PAUSE = r5;
            ?? r7 = new Enum("ON_STOP", 4);
            ON_STOP = r7;
            ?? r9 = new Enum("ON_DESTROY", 5);
            ON_DESTROY = r9;
            ?? r11 = new Enum("ON_ANY", 6);
            ON_ANY = r11;
            $VALUES = new Event[]{r0, r1, r3, r5, r7, r9, r11};
        }

        public static Event valueOf(String str) {
            return (Event) Enum.valueOf(Event.class, str);
        }

        public static Event[] values() {
            return (Event[]) $VALUES.clone();
        }

        public final State getTargetState() {
            int ordinal = ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        return State.RESUMED;
                    }
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal == 5) {
                                return State.DESTROYED;
                            }
                            throw new IllegalArgumentException(this + " has no target state");
                        }
                    }
                }
                return State.STARTED;
            }
            return State.CREATED;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public final class State {
        public static final /* synthetic */ State[] $VALUES;
        public static final State CREATED;
        public static final State DESTROYED;
        public static final State INITIALIZED;
        public static final State RESUMED;
        public static final State STARTED;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r5v1, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r7v1, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        static {
            ?? r0 = new Enum("DESTROYED", 0);
            DESTROYED = r0;
            ?? r1 = new Enum("INITIALIZED", 1);
            INITIALIZED = r1;
            ?? r3 = new Enum("CREATED", 2);
            CREATED = r3;
            ?? r5 = new Enum("STARTED", 3);
            STARTED = r5;
            ?? r7 = new Enum("RESUMED", 4);
            RESUMED = r7;
            $VALUES = new State[]{r0, r1, r3, r5, r7};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }

        public final boolean isAtLeast(State state) {
            return compareTo(state) >= 0;
        }
    }

    public Lifecycle() {
        new AtomicReference();
    }

    public abstract void addObserver(LifecycleObserver lifecycleObserver);

    public abstract State getCurrentState();

    public abstract void removeObserver(LifecycleObserver lifecycleObserver);
}
